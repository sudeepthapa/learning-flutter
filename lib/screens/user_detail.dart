import 'package:flutter/material.dart';
import 'package:myfirstapp/models/user.dart';
import 'package:myfirstapp/repository/user_repository.dart';

class UserDetail extends StatelessWidget {
  Map<String, dynamic> arguments;
  UserRepository _userRepository = UserRepository();
  UserDetail({Key? key, required this.arguments}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(arguments['name'])),
      body: FutureBuilder(
        future: _userRepository.getUserById(arguments['id']),
        builder: (BuildContext context, AsyncSnapshot snap) {
          // if(snap.connectionState == ConnectionState.waiting){

          // }
          if (snap.hasData) {
            return Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text("Address: ${snap.data!.address!.city}"),
                ],
              ),
            );
          } else {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }
        },
      ),
    );
  }
}
