import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:io';

class ImageControl extends StatefulWidget {
  const ImageControl({super.key});

  @override
  State<ImageControl> createState() => _ImageControlState();
}

class _ImageControlState extends State<ImageControl> {
  File? pickedImage;

  void _pickImage() async {
    final imagePicker = ImagePicker();
    final pickedImageFile = await imagePicker.pickImage(
      source: ImageSource.camera,
      imageQuality: 100,
      maxHeight: 30,
    );

    setState(() {
      if (pickedImageFile != null) {
        pickedImage = File(pickedImageFile.path);
      }
    });
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
