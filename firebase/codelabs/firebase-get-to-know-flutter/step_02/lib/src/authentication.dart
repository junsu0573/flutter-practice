// Copyright 2022 The Flutter Authors. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import 'widgets.dart';

class AuthFunc extends StatelessWidget {
  const AuthFunc({
    super.key,
    required this.loggedIn,
    required this.signOut,
  });

  final bool loggedIn;
  final void Function() signOut;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 24, bottom: 8),
          // 버튼으로 로그인 및 로그아웃 이벤트 생성
          child: StyledButton(
              onPressed: () {
                // loggedIn value가 false면 sign-in 페이지 push하고 true라면 signOut()을 호출한다.
                !loggedIn ? context.push('/sign-in') : signOut();
              },
              // 로그인이 되어있지 않으면 RSVP고 돼있으면 Logout으로 버튼 텍스트 설정
              child: !loggedIn ? const Text('RSVP') : const Text('Logout')),
        ),
        Visibility(
          // 로그인이 되어있으면 아래 버튼 생성 아니면 숨김
          visible: loggedIn,
          child: Padding(
            padding: const EdgeInsets.only(left: 24, bottom: 8),
            // profile 페이지를 띄우는 버튼
            child: StyledButton(
                onPressed: () {
                  context.push('/profile');
                },
                child: const Text('Profile')),
          ),
        )
      ],
    );
  }
}
