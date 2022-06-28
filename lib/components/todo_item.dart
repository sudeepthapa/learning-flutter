import 'package:flutter/material.dart';

class TodoItem extends StatelessWidget {
  String todo;
  TodoItem({required this.todo, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      margin: const EdgeInsets.all(10),
      color: Colors.green,
      width: double.infinity,
      height: 100,
      child: Text(
        todo,
        style: const TextStyle(fontSize: 30),
      ),
    );
  }
}
