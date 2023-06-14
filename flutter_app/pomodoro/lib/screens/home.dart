import 'package:flutter/material.dart';
import 'dart:async';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  static const twentyFiveMinutes = 10;
  int totalSeconds = twentyFiveMinutes;
  bool isRunning = false;
  int totalPorodomors = 0;
  // late: 나중에 초기화하겠다는 의미를 가진다.
  // Timer 타입은 dart:async에 있는 타입으로, 시간에 대한 메소드를 가진다.
  late Timer timer;

  // 파라미터로 timer를 불러야 하는 이유는 onStartPressed() 함수에서 Timer.peridic()의
  // return 타입이 Timer이기 때문이다.
  void onTick(Timer timer) {
    if (totalSeconds == 0) {
      setState(() {
        totalPorodomors++;
        isRunning = false;
        totalSeconds = twentyFiveMinutes;
      });
      timer.cancel();
    } else {
      setState(() {
        totalSeconds--;
      });
    }
  }

  void onStartPressed() {
    timer = Timer.periodic(
      const Duration(seconds: 1),
      onTick,
    );
    setState(() {
      isRunning = true;
    });
  }

  void onPausePressed() {
    timer.cancel();
    setState(() {
      isRunning = false;
    });
  }

  String format(int seconds) {
    var duration = Duration(seconds: seconds);

    return duration.toString().split(".").first.substring(2, 7);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // 부모 클래스인 main의 정보(context)를 가져와 업데이트
      backgroundColor: Theme.of(context).colorScheme.background,
      body: Column(
        children: [
          // Flexible 위젯은 기기의 화면 비율에 맞추어 크기를 조절해준다.
          // flex 값을 통해 그 비율을 조절할 수 있다.
          Flexible(
            flex: 1,
            child: Container(
              alignment: Alignment.bottomCenter,
              child: Text(
                format(totalSeconds),
                style: TextStyle(
                  color: Theme.of(context).cardColor,
                  fontSize: 80,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          ),
          Flexible(
            flex: 3,
            child: Center(
              child: IconButton(
                iconSize: 100,
                color: Theme.of(context).cardColor,
                onPressed: isRunning ? onPausePressed : onStartPressed,
                icon: Icon(isRunning
                    ? Icons.pause_circle_outline
                    : Icons.play_circle_outline),
              ),
            ),
          ),
          Flexible(
            flex: 1,
            child: Row(
              children: [
                // 상위 위젯에 대해 최대한으로 확장시켜주는 위젯
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                        color: Theme.of(context).cardColor,
                        borderRadius: const BorderRadius.vertical(
                            top: Radius.circular(30))),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Pomodoros',
                          style: TextStyle(
                            fontSize: 20,
                            color: Theme.of(context).textTheme.bodyLarge!.color,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        Text(
                          '$totalPorodomors',
                          style: TextStyle(
                            fontSize: 50,
                            color: Theme.of(context).textTheme.bodyLarge!.color,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
