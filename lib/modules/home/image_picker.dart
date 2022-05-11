import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class PickImage extends StatefulWidget {
  const PickImage({Key? key}) : super(key: key);

  @override
  _PickImageState createState() => _PickImageState();
}

class _PickImageState extends State<PickImage> {
  ImagePicker imagePicker = ImagePicker();
  File? _image;

  Future getImagefromcamera() async {
    var image = await imagePicker.pickImage(source: ImageSource.camera);

    setState(() {
      _image = image as File?;
    });
  }

  Future getImagefromGallery() async {
    var image = await imagePicker.pickImage(source: ImageSource.gallery);

    setState(() {
      _image = image as File?;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Flutter Image Picker Example -codeplayon"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          const Center(
            child: Text(
              "Image Picker Example in Flutter -codeplayon",
              style: TextStyle(fontSize: 20),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: SizedBox(
              width: MediaQuery.of(context).size.width,
              height: 200.0,
              child: Center(
                child: _image == null
                    ? const Text("No Image is picked")
                    : Image.file(_image!),
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              FloatingActionButton(
                onPressed: getImagefromcamera,
                tooltip: "Pick Image form gallery",
                child: const Icon(Icons.add_a_photo),
              ),
              FloatingActionButton(
                onPressed: getImagefromGallery,
                tooltip: "Pick Image from camera",
                child: const Icon(Icons.camera_alt),
              )
            ],
          )
        ],
      ),
    );
  }
}
