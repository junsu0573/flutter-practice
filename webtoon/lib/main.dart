import 'package:flutter/material.dart';
import 'package:webtoon/screens/home.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key}); // widget의 ID: 위젯을 구별하기 위해 사용되는 파라미터다.

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Home(),
    );
  }
}
