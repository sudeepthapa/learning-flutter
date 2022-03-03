import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  final Widget title;
  const CustomAppBar({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: title,
      elevation: 0,
    );
  }
}
