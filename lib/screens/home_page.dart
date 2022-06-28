import 'package:flutter/material.dart';
import 'package:myfirstapp/components/common/custom_appbar.dart';
import 'package:myfirstapp/components/todo_form.dart';
import 'package:myfirstapp/components/todo_list.dart';
import 'package:myfirstapp/providers/users_provider.dart';
import 'package:provider/provider.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    UserProvider provider = Provider.of<UserProvider>(context);
    print(provider.isLoading);
    print(provider.users);
    return Scaffold(
      appBar: const PreferredSize(child: CustomAppBar(), preferredSize: Size.fromHeight(80),),
      body: Container(
        margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
        width: double.infinity,
        child: Column(
          children: [
            TodoForm(),
            ElevatedButton(
                onPressed: () {
                  provider.getUsers();
                },
                child: const Text('Load Users')),
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
