import 'dart:convert';

import 'package:myfirstapp/models/user.dart';
import 'package:http/http.dart' as http;

class UserRepository {
  Future<List<User>> fetchUsers() async {
    try {
      const String apiUrl = "https://jsonplaceholder.typicode.com/users";
      var response = await http.get(Uri.parse(apiUrl));
      var result = await json.decode(response.body);
      List<User> users = result.map<User>((res) => User.fromJson(res)).toList();
      await Future.delayed(Duration(seconds: 5));
      return users;
    } catch (e) {
      print('=======');
      print(e);
    }
    return Future.value(List<User>.filled(
        1,
        User(
            name: '',
            email: '',
            id: 1,
            userName: '',
            phone: '',
            website: '',
            address: null)));
  }
}
