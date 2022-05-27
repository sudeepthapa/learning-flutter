import 'package:flutter/material.dart';
import 'package:myfirstapp/components/todo_item.dart';
import 'package:myfirstapp/providers/todos_provider.dart';
import 'package:provider/provider.dart';

class TodoList extends StatelessWidget {
  const TodoList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer<TodosProvider>(builder: (context, provider, _) {
      return ListView.builder(
        itemCount: provider.todos.length,
        itemBuilder: (BuildContext context, int index) {
          return TodoItem(todo: provider.todos[index]);
        },
      );
    });
  }
}
