import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Platform.isIOS
          ? CupertinoButton(child: Text('Click Me'), onPressed: () {})
          : ElevatedButton(onPressed: () {}, child: Text('Click here')),
    );
  }
}
