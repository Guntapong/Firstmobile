import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class Images extends StatefulWidget {
  const Images({Key? key}) : super(key: key);

  @override
  _ImagesState createState() => _ImagesState();
}

class _ImagesState extends State<Images> {
  dynamic file;
  Future<void> openCamera() async {
    var picker = ImagePicker();
    var photo = await picker.pickImage(source: ImageSource.camera);
    setState(() {
      file = File(photo!.path);
    });

    print(file);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Image"),
      ),
      body: Center(
        child: file == null ? Text('Select Image') : Image.file(file),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          print('Open camera');
          openCamera();
        },
        child: Icon(Icons.camera_alt),
      ),
    );
  }
}
