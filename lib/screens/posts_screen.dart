import 'package:flutter/material.dart';

class PostScreen extends StatelessWidget {
  const PostScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('My Posts')),
      body: Center(
        child: ElevatedButton(
          child: const Text('Go To Home'),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
    );
  }
}
