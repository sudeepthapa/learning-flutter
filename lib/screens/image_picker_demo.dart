import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class ImagePickerDemo extends StatefulWidget {
  const ImagePickerDemo({Key? key}) : super(key: key);

  @override
  State<ImagePickerDemo> createState() => _ImagePickerDemoState();
}

class _ImagePickerDemoState extends State<ImagePickerDemo> {
  XFile? _selectedFile;
  final ImagePicker _picker = ImagePicker();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SizedBox(
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                width: 400,
                height: 300,
                color: Colors.black12,
                child: _selectedFile != null
                    ? Image.file(
                        File(_selectedFile!.path),
                        fit: BoxFit.cover,
                      )
                    : Image.network(
                        'https://designshack.net/wp-content/uploads/placeholder-image.png',
                        fit: BoxFit.cover,
                      ),
              ),
              ElevatedButton(
                onPressed: () async {
                  final XFile? image =
                      await _picker.pickImage(source: ImageSource.gallery);
                  setState(() {
                    _selectedFile = image;
                  });
                },
                child: const Text('Pick from gallery'),
              ),
              ElevatedButton(
                onPressed: () async {
                  final XFile? image =
                      await _picker.pickImage(source: ImageSource.camera);
                  setState(() {
                    _selectedFile = image;
                  });
                },
                child: const Text('Open Camera'),
              )
            ],
          ),
        ),
      ),
    );
  }
}
