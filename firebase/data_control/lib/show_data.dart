import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class ShowData extends StatelessWidget {
  const ShowData({super.key});

  @override
  Widget build(BuildContext context) {
    // stramBuilder는 수시로 바뀌는 값을 가져올 때 사용된다.
    // 특정 이벤트를 구독하여 rebuild한다.
    return StreamBuilder(
      stream: FirebaseFirestore.instance
          .collection(
              'meat/cqT3JK9BlRDN9P8evBqI/cows/cCzwHlxt489Ip8LSXkrP/part')
          .orderBy(
            'time',
            descending: true,
          )
          .snapshots(), // stream builder로 firebase instance의 결과값을 가져온다.

      // rebuild하는 구간
      builder: (BuildContext context,
          AsyncSnapshot<QuerySnapshot<Map<String, dynamic>>> snapshot) {
        // stream 데이터를 가져오고 있는 중이면, 로딩 모형을 띄운다.
        // 이 코드는 작성하는 것이 좋다.
        if (snapshot.connectionState == ConnectionState.waiting) {
          return const Center(
            child: CircularProgressIndicator(),
          );
        }
        // docs는 firestore 패키지에서 제공하는 데이터를 가리키는 타입이다.
        // 해당 코드에서는 docs에 stream 결과를 저장하는 용도로 쓰였다.
        final docs = snapshot.data!.docs;

        return ListView.builder(
          reverse: true,
          itemBuilder: (context, index) {
            return Container(
              padding: const EdgeInsets.all(10),
              child: Text(
                docs[index]['name'], // docs의 'name'부분 출력
                style: const TextStyle(
                  fontSize: 30,
                ),
              ),
            );
          },
          itemCount: docs.length, // docs의 길이만큼 리스트뷰 설정
        );
      },
    );
  }
}
