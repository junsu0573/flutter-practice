import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class InsertData extends StatefulWidget {
  const InsertData({super.key});

  @override
  State<InsertData> createState() => _InsertDataState();
}

class _InsertDataState extends State<InsertData> {
  // 텍스트 컨트롤러로 텍스트의 변화를 핸들링할 수 있다.
  final _controller = TextEditingController();

  // 사용자로부터 입력받을 텍스트
  var _userEnterData = '';

  // 데이터를 입력하는 메소드
  void _pushData() {
    // 포커스가 되고 있는 위젯을 기준으로 하위 위젯들을 context로 지정하고 해당 포커스 위젯을 안 보이게 만든다.
    FocusScope.of(context).unfocus();

    // firebase storage의 instance에서 해당 경로의 문서에 접근해 add를 통해 새로운 데이터를 집어넣는다.
    FirebaseFirestore.instance
        .collection('meat/cqT3JK9BlRDN9P8evBqI/cows/cCzwHlxt489Ip8LSXkrP/part')
        .add({
      'name': _userEnterData,
      'time': Timestamp.now(),
    });
    _controller.clear(); // 텍스트 컨트롤러로 해당 문자를 비운다.
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 8),
      padding: const EdgeInsets.all(8),
      child: Row(
        children: [
          Expanded(
            child: TextField(
              controller: _controller, // 텍스트 컨트롤러로 남아있는    문자열을 지우기 위함
              decoration: const InputDecoration(
                labelText: 'Push the data...',
              ),
              // onChanged는 텍스트가 입력될 때마다 호출된다.
              onChanged: (value) {
                setState(() {
                  _userEnterData = value;
                });
              },
            ),
          ),
          IconButton(
            // text가 비어있지 않으면 _pushData 실행
            onPressed: _userEnterData.trim().isEmpty ? null : _pushData,
            icon: const Icon(Icons.send),
            color: Colors.blue,
          )
        ],
      ),
    );
  }
}
