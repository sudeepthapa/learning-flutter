import 'package:flutter/material.dart';

class TodoForm extends StatelessWidget {
  Function addTodoItem;
  TodoForm({required this.addTodoItem, Key? key}) : super(key: key);
  TextEditingController todoController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Expanded(
          child: TextField(
            controller: todoController,
            decoration: const InputDecoration(
                labelText: 'Enter todo here..', border: OutlineInputBorder()),
          ),
        ),
        const SizedBox(
          width: 20,
        ),
        ElevatedButton(
            onPressed: () {
              addTodoItem(todoController.text);
              FocusScope.of(context).unfocus();
            },
            child: const Text('Add'))
      ],
    );
  }
}
