import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:myfirstapp/models/user.dart';
import 'package:http/http.dart' as http;

// ignore: must_be_immutable
class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<User> allUsers = [];

  Future<List<User>> fetchUsers() async {
    try {
      const String apiUrl = "https://jsonplaceholder.typicode.com/users";
      var response = await http.get(Uri.parse(apiUrl));
      var result = await json.decode(response.body);
      List<User> users = result.map((res) => User.fromJson(res)).toList();
      return users;
    } catch (e) {
      print('=======');
      print(e);
    }
    return Future.value(allUsers);
  }

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Users'),
      ),
      body: Container(
        child: FutureBuilder(
          future: fetchUsers(),
          builder: (BuildContext context, AsyncSnapshot<List<User>> snapshot) {
            print(snapshot);
            if (snapshot.hasData) {
              List<User>? users = snapshot.data;
              return ListView.builder(
                  itemCount: users!.length,
                  itemBuilder: (BuildContext context, int index) {
                    return ListTile(
                      title: Text(users[index].name),
                    );
                  });
            } else {
              return Container();
            }
          },
        ),
      ),
    );
  }
}
