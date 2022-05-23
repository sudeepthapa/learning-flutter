import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:myfirstapp/models/user.dart';
import 'package:http/http.dart' as http;
import 'package:myfirstapp/repository/movie_repository.dart';
import 'package:myfirstapp/repository/user_repository.dart';
import 'package:shared_preferences/shared_preferences.dart';

// ignore: must_be_immutable
class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final UserRepository _userRepository = UserRepository();
  final MovieRepository _movieRepository = MovieRepository();
  late String username;
  late SharedPreferences prefs;

  @override
  void initState() {
    super.initState();
    _movieRepository.getTrendingMovies();
    getLoggedInDetails();
  }

  getLoggedInDetails() async {
    prefs = await SharedPreferences.getInstance();
    username = prefs.getString('username') ?? '';
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Welcome $username'),
        actions: [
          IconButton(
            onPressed: () async {
              await prefs.remove('loggedIn');
              await prefs.remove('username');
              Navigator.pushReplacementNamed(context, '/login');
            },
            icon: const Icon(Icons.logout),
          ),
        ],
      ),
      body: Container(
        child: FutureBuilder(
          future: _userRepository.fetchUsers(),
          builder: (BuildContext context, AsyncSnapshot<List<User>> snapshot) {
            print(snapshot);
            if (snapshot.hasData) {
              List<User>? users = snapshot.data;
              return ListView.builder(
                  itemCount: users!.length,
                  itemBuilder: (BuildContext context, int index) {
                    User user = users[index];
                    return ListTile(
                      leading: CircleAvatar(
                          child: Image.network(
                              '${MovieRepository.imageBaseURL}/rr7E0NoGKxvbkb89eR1GwfoYjpA.jpg')),
                      subtitle: Text(user.address!.geo.lat),
                      title: InkWell(
                        child: Text(user.name),
                        onTap: () {
                          Navigator.pushNamed(context, '/detail',
                              arguments: {'id': user.id, 'name': user.name});
                        },
                      ),
                    );
                  });
            } else {
              return const Center(child: CircularProgressIndicator());
            }
          },
        ),
      ),
    );
  }
}
