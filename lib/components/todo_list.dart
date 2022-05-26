import 'package:flutter/material.dart';
import 'package:myfirstapp/components/todo_item.dart';

class TodoList extends StatelessWidget {
  List<String> todos;
  TodoList({required this.todos, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: todos.length,
      itemBuilder: (BuildContext context, int index) {
        return TodoItem(todo: todos[index]);
      },
    );
  }
}
