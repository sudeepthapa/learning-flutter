import 'package:flutter/material.dart';
import 'package:myfirstapp/components/todo_form.dart';
import 'package:myfirstapp/components/todo_list.dart';
import 'package:provider/provider.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('State Mangement')),
      body: Container(
        margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
        width: double.infinity,
        child: Column(
          children: [
            TodoForm(),
            const SizedBox(
              height: 20,
            ),
            const Expanded(
              child: TodoList(),
            )
          ],
        ),
      ),
    );
  }
}
