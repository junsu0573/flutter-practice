import 'package:firebase_auth/firebase_auth.dart'
    hide EmailAuthProvider, PhoneAuthProvider;
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_ui_auth/firebase_ui_auth.dart';
import 'package:flutter/material.dart';

import 'firebase_options.dart';

class ApplicationState extends ChangeNotifier {
  ApplicationState() {
    init();
  }

  bool _loggedIn = false;
  bool get loggedIn => _loggedIn; // getter

  Future<void> init() async {
    // firebase_core 패키지 내의 생성자
    await Firebase.initializeApp(
        options:
            DefaultFirebaseOptions.currentPlatform); // 현재 사용중인 플랫폼이 무엇인지 설정

    FirebaseUIAuth.configureProviders([
      // firebase_ui_auth 패키지에서 제공하는 이메일 인증 API
      EmailAuthProvider(),
    ]);

    FirebaseAuth.instance.userChanges().listen((user) {
      // login 할 때 유저정보가 있다면 ture 없다면 false 반환
      if (user != null) {
        _loggedIn = true;
      } else {
        _loggedIn = false;
      }
      notifyListeners();
    });
  }
}
