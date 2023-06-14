import 'package:flutter/material.dart';

class SecondRoute extends StatefulWidget {
  const SecondRoute({super.key});

  @override
  State<SecondRoute> createState() => _SecondRouteState();
}

class _SecondRouteState extends State<SecondRoute> {
  int counter = 0;

  void onClicked() {
    setState(() {
      counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('page 2'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text('Go back!'),
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          Center(
            child: Column(
              children: [
                const Text(
                  'Click',
                ),
                Text(
                  '$counter',
                ),
                IconButton(
                  onPressed: onClicked,
                  icon: const Icon(Icons.add_box_rounded),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
