import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';

// image_picker package를 사용하여 카메라 컨트롤
import 'package:image_picker/image_picker.dart';
import 'dart:io';

class ImageControl extends StatefulWidget {
  const ImageControl({super.key});

  @override
  State<ImageControl> createState() => _ImageControlState();
}

class _ImageControlState extends State<ImageControl> {
  File? pickedImage;

  // 이미지 촬영을 위한 메소드이다.
  // ImagePicker()로 해당 메소드를 호출하고,
  // 카메라를 source로 하여 촬영한다.
  void _pickImage() async {
    final imagePicker = ImagePicker();
    final pickedImageFile = await imagePicker.pickImage(
      source: ImageSource.camera,
      imageQuality: 100,
    );

    setState(() {
      if (pickedImageFile != null) {
        // 만약 촬영한 이미지 파일이 존재한다면 해당 코드를 실행한다.
        // pickedImage에 촬영한 이미지를 달아놓는다.
        pickedImage = File(pickedImageFile.path);
      }
    });
    // Firebase Storage의 저장 위치를 가리키는 변수를 생성하고 putFile()을 통해 촬영한 이미지를 해당 위치에 저장한다.
    final refImage =
        FirebaseStorage.instance.ref().child('picked_Image').child('.png');
    await refImage.putFile(pickedImage!);
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        OutlinedButton.icon(
          onPressed: () {
            _pickImage();
          },
          icon: const Icon(Icons.camera),
          label: const Text('Add Image'),
        ),
        const SizedBox(
          width: 50,
        ),
        CircleAvatar(
          radius: 40,
          backgroundColor: Colors.amber,
          backgroundImage: pickedImage != null ? FileImage(pickedImage!) : null,
        ),
      ],
    );
  }
}
