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

  // Named Routes
  static Map<String, WidgetBuilder> getRoutes() {
    return {
      Routes.ROOT: (_) => const Home(),
      Routes.POSTS: (_) => const PostScreen()
    };
  }

  // Dynamic routing
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.ROOT:
        return MaterialPageRoute(builder: (_) => const Home());
      case Routes.POSTS:
        return MaterialPageRoute(builder: (_) => const PostScreen());
      default:
        return MaterialPageRoute(
          builder: (_) => const Scaffold(
            body: Center(
              child: Text('No route defined'),
            ),
          ),
        );
    }
  }
}
