import 'package:flutter/material.dart';
import 'package:myfirstapp/providers/todos_provider.dart';
import 'package:provider/provider.dart';

class TodoForm extends StatefulWidget {
  TodoForm({Key? key}) : super(key: key);

  @override
  State<TodoForm> createState() => _TodoFormState();
}

class _TodoFormState extends State<TodoForm> {
  TextEditingController todoController = TextEditingController();

  @override
  void dispose() {
    todoController.dispose();
    super.dispose();
  }

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
              Provider.of<TodosProvider>(context, listen: false)
                  .addTodo(todoController.text);
              FocusScope.of(context).unfocus();
              todoController.clear();
            },
            child: const Text('Add'))
      ],
    );
  }
}
