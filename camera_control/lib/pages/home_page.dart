import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final ImagePicker picker = ImagePicker();
  // 빈 이미지 리스트 생성
  List<XFile> pickedImages = [];

  Future getImageFromCamera() async {
    final images = await picker.pickImage(source: ImageSource.camera);

    setState(() {
      pickedImages.add(XFile(images!.path));
    });
  }

  // pickMultiImage() 메서드를 통해 이미지를 불러오는 역할을 한다.
  Future<void> pickImage() async {
    final List<XFile> images = await picker.pickMultiImage();
    if (images.isEmpty == false) {
      setState(() {
        pickedImages = images;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    List<Widget> boxContents = [
      IconButton(
        onPressed: () {
          pickImage();
        },
        icon: Container(
          alignment: Alignment.center,
          decoration: BoxDecoration(
            color: Colors.white.withOpacity(0.6),
            shape: BoxShape.circle,
          ),
          child: const Icon(
            Icons.camera,
          ),
        ),
      ),
      Container(),
      Container(),
      pickedImages.length <= 4
          ? Container()
          : FittedBox(
              child: Container(
                padding: const EdgeInsets.all(6),
                decoration: BoxDecoration(
                  color: Colors.white.withOpacity(0.6),
                  shape: BoxShape.circle,
                ),
                child: Text(
                  '+${(pickedImages.length - 4).toString()}',
                  style: const TextStyle(
                    fontSize: 20,
                  ),
                ),
              ),
            )
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text('Camera App'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            height: 450,
            child: GridView.count(
              padding: const EdgeInsets.all(2),
              crossAxisCount: 2,
              mainAxisSpacing: 5,
              crossAxisSpacing: 5,
              children: List.generate(
                4,
                (index) => Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(
                      color: Colors.black,
                    ),
                    image: index <= pickedImages.length - 1
                        ? DecorationImage(
                            image: FileImage(File(pickedImages[index].path)))
                        : null,
                  ),
                  child: Center(child: boxContents[index]),
                ),
              ),
            ),
          ),
        ],
      ),
      floatingActionButton: IconButton(
        onPressed: () => getImageFromCamera(),
        icon: const Icon(Icons.camera_alt),
      ),
    );
  }
}
