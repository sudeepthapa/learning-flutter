import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final _titleController = TextEditingController();
  List<String> todos = [];
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(15),
      width: double.maxFinite,
      child: Column(
        children: [
          Row(
            children: [
              Flexible(
                child: TextField(
                  controller: _titleController,
                  decoration: const InputDecoration(
                    labelText: 'Enter something',
                    border: OutlineInputBorder(),
                  ),
                ),
              ),
              IconButton(
                  onPressed: () {
                    setState(() {
                      todos = [...todos, _titleController.text];
                    });
                    _titleController.clear();
                  },
                  icon: const Icon(Icons.check))
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          Flexible(
            child: todos.isEmpty
                ? const Center(
                    child: Text('No todos at the moment'),
                  )
                : ListView.builder(
                    itemCount: todos.length,
                    itemBuilder: (BuildContext context, int index) {
                      return Text(todos[index]);
                    },
                  ),
          )
        ],
      ),
    );
  }
}
