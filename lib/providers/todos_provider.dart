import 'package:flutter/material.dart';

class TodosProvider extends ChangeNotifier {
  List<String> todos = ['Work', 'Shopping'];

  addTodo(String todo) {
    todos.add(todo);
    notifyListeners();
  }
}
