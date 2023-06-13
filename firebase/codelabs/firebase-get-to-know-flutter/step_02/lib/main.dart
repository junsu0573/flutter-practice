// Copyright 2022 The Flutter Authors. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:firebase_ui_auth/firebase_ui_auth.dart'; // new
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart'; // new
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart'; // new

import 'app_state.dart'; // new
import 'home_page.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  // WidgetsFlutterBinding.ensureInitialized() 사용이유:
  // 메소드의 시작 지점에서 Flutter 엔진과 위젯의 바인딩이 미리 완료되어 있게 만들어준다
  // WidgetFlutterBinding는 Flutter Engine과의 상호작용을 위해 사용된다.
  // Firebase를 초기화 하기 위해서 네이티브 코드를 호출해야하는데, 플러그인은 네이티브 코드를 호출할 플랫폼 채널을 사용할 필요가 있다.
  // 따라서 ensureInitialized()를 호출하여 플랫폼 채널의 위젯 바인딩을 보장해야한다.
  // main 메소드에서 서버 등에 비동기로 데이터를 다룬 다음 runApp을 실행해야하는 경우에 반드시 해당 코드를 추가해야한다.

  runApp(ChangeNotifierProvider(
    // ChangeNotifierProvider는 전체 위젯트리를 update하는 것이 아니라, 필요한 부분만 update한다.
    // ApplicationStaet() 내의 값이 변화하면 그것을 감지하여 UI를 update한다.
    create: (context) => ApplicationState(),
    builder: ((context, child) => const App()),
    // App() 하위 모든 위젯에서 ApplicationState()에 접근할 수 있다.
  ));
}

// GoRouter를 이용해 페이지 이동
final _router = GoRouter(
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => const HomePage(),
      // sub route
      routes: [
        GoRoute(
          path: 'sign-in',
          builder: (context, state) {
            // firebase_ui_auth 패키지에서 제공하는 로그인 화면
            return SignInScreen(
              actions: [
                ForgotPasswordAction(((context, email) {
                  final uri = Uri(
                    // sub route
                    path: '/sign-in/forgot-password',
                    queryParameters: <String, String?>{
                      'email': email,
                    },
                  );
                  context.push(uri.toString());
                })),
                // auth 상태가 변화했을 때 특정 액션을 취하는 메소드
                AuthStateChangeAction(((context, state) {
                  final user = switch (state) {
                    SignedIn state => state.user,
                    UserCreated state => state.credential.user,
                    _ => null
                  };
                  if (user == null) {
                    return;
                  }
                  if (state is UserCreated) {
                    user.updateDisplayName(user.email!.split('@')[0]);
                  }
                  if (!user.emailVerified) {
                    user.sendEmailVerification();
                    const snackBar = SnackBar(
                        content: Text(
                            'Please check your email to verify your email address'));
                    ScaffoldMessenger.of(context).showSnackBar(snackBar);
                  }
                  context.pushReplacement('/');
                })),
              ],
            );
          },
          routes: [
            GoRoute(
              path: 'forgot-password',
              builder: (context, state) {
                final arguments = state.queryParameters;
                return ForgotPasswordScreen(
                  email: arguments['email'],
                  headerMaxExtent: 200,
                );
              },
            ),
          ],
        ),
        GoRoute(
          path: 'profile',
          builder: (context, state) {
            return ProfileScreen(
              providers: const [],
              actions: [
                // 로그아웃 시 이동
                SignedOutAction((context) {
                  context.pushReplacement('/');
                }),
              ],
            );
          },
        ),
      ],
    ),
  ],
);

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    // routing 할 수 있는 materalApp 사용
    return MaterialApp.router(
      title: 'Firebase Meetup',
      theme: ThemeData(
        buttonTheme: Theme.of(context).buttonTheme.copyWith(
              highlightColor: Colors.deepPurple,
            ),
        primarySwatch: Colors.deepPurple,
        textTheme: GoogleFonts.robotoTextTheme(
          Theme.of(context).textTheme,
        ),
        visualDensity: VisualDensity.adaptivePlatformDensity,
        useMaterial3: true,
      ),
      routerConfig: _router, // router 설정
    );
  }
}
