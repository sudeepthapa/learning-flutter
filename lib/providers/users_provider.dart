import 'package:flutter/material.dart';

class UserProvider extends ChangeNotifier {
  List<String> users = [];
  bool isLoading = false;

  getUsers() async {
    isLoading = true;
    notifyListeners();

    await Future.delayed(const Duration(seconds: 3));
    users.addAll(['User 1', 'User 2', 'User 3']);
    isLoading = false;
    notifyListeners();
  }
}
