import 'package:flutter/material.dart';

class CustomCircleAvatar extends StatelessWidget {
  final Color? color;
  final double? radius;
  final Widget? child;
  final ImageProvider? bgImage;
  const CustomCircleAvatar(
      {Key? key, this.color, this.radius, this.child, this.bgImage})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: radius != null ? radius! * 2 : 50,
      height: radius != null ? radius! * 2 : 50,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(radius != null ? radius! : 25),
          color: color ?? Colors.blue,
          image: bgImage != null
              ? DecorationImage(image: bgImage!, fit: BoxFit.cover)
              : null),
      child: Center(child: child),
    );
  }
}

// Card -> image, title, description, button, borderRadius,
// Appbar -> title, action, backButton, centerTitle
// List Tile
