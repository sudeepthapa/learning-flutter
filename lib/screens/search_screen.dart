import 'package:flutter/material.dart';
import 'package:myfirstapp/constants/routes.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ElevatedButton(
          child: const Text('Show Posts'),
          onPressed: () {
            Navigator.pushNamed(context, Routes.POSTS);
          }),
    );
  }
}
