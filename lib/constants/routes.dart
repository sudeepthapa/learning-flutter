// TODO::

// Create a function that returns all the named routes used in the application
// Create constants for routes

// ignore_for_file: constant_identifier_names

import 'package:flutter/material.dart';
import 'package:myfirstapp/screens/home.dart';
import 'package:myfirstapp/screens/posts_screen.dart';

class Routes {
  static const String ROOT = '/';
  static const String POSTS = '/posts';

  static Map<String, WidgetBuilder> getRoutes() {
    return {
      Routes.ROOT: (_) => const Home(),
      Routes.POSTS: (_) => const PostScreen()
    };
  }
}
