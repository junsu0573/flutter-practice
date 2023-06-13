// Copyright 2022 The Flutter Authors. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:firebase_auth/firebase_auth.dart' // new
    hide
        EmailAuthProvider,
        PhoneAuthProvider; // new
import 'package:flutter/material.dart';
import 'package:provider/provider.dart'; // new

import 'app_state.dart'; // new
import 'src/authentication.dart'; // new
import 'src/widgets.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Firebase Meetup'),
      ),
      body: ListView(
        children: <Widget>[
          Image.asset('assets/codelab.png'),
          const SizedBox(height: 8),
          const IconAndDetail(Icons.calendar_today, 'October 30'),
          const IconAndDetail(Icons.location_city, 'San Francisco'),
          // Consumer는 of.context와 성능상으로 완전히 같다.
          // Consumer를 사용하는 이유는 notifyListeners()가 실행될 때, of.context와는 달리 해당 위젯에서 일부분만 rebuild되도록 설정할 수 있기 때문이다.
          // 원하는 위젯을 Consumer<> 안에 감싸서 사용하고, 빌드를 위한 파라미터로는 context, product, child가 있다.
          // product는 공유하고 있는 provider 객체를 의미하고,
          // child는 rebuil 되지 않는 부분을 의미한다.
          Consumer<ApplicationState>(
            // AuthFunc() 실행
            // 파라미터로 ApplicationState의 loggedIn과 FirebaseAuth의 signOut()을 넘겨줬다.
            builder: (context, appState, _) => AuthFunc(
                loggedIn: appState.loggedIn,
                signOut: () {
                  FirebaseAuth.instance.signOut();
                }),
          ),
          const Divider(
            height: 8,
            thickness: 1,
            indent: 8,
            endIndent: 8,
            color: Colors.grey,
          ),
          const Header("What we'll be doing"),
          const Paragraph(
            'Join us for a day full of Firebase Workshops and Pizza!',
          ),
        ],
      ),
    );
  }
}
