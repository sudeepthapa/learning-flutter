import 'package:flutter/material.dart';
import 'package:myfirstapp/components/todo_form.dart';
import 'package:myfirstapp/components/todo_list.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<String> todos = [];

  addTodo(String todo) {
    // Method One
    // var updatedTodo = [todo, ...todos];
    // todos = updatedTodo;
    // setState(() {
    // });

    // Method Two
    // TODO:: Study array methods
    todos.add(todo);
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('State Management')),
      body: Container(
        margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
        width: double.infinity,
        child: Column(
          children: [
            TodoForm(addTodoItem: addTodo),
            const SizedBox(
              height: 20,
            ),
            Expanded(
              child: TodoList(todos: todos),
            )
          ],
        ),
      ),
    );
  }
}
