import 'dart:convert';

import 'package:myfirstapp/models/user.dart';
import 'package:http/http.dart' as http;

class UserRepository {
  final String baseUrl = "https://jsonplaceholder.typicode.com";
  Future<List<User>> fetchUsers() async {
    try {
      var response = await http.get(Uri.parse('$baseUrl/users'));
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

  Future getUserById(int id) async {
    try {
      var response = await http.get(Uri.parse('$baseUrl/users/$id'));
      if (response.statusCode == 200) {
        var result = await json.decode(response.body);
        User user = User.fromJson(result);
        return user;
      } else {
        throw Exception();
      }
    } catch (e) {
      print('=======');
      print(e);
      return Future.value(User(
          name: '',
          email: '',
          id: 1,
          userName: '',
          phone: '',
          website: '',
          address: null));
    }
  }
}
