import 'package:data_control/image_control.dart';
import 'package:data_control/insert_data.dart';
import 'package:data_control/show_data.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('This is test'),
      ),
      body: Container(
        child: const Column(
          children: [
            Expanded(
              child: ShowData(),
            ),
            ImageControl(),
            InsertData(),
          ],
        ),
      ),
    );
  }
}
