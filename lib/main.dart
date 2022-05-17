import 'package:flutter/material.dart';
import 'package:myfirstapp/screens/HomeScreen.dart';
import 'package:myfirstapp/screens/user_detail.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.deepOrange,
      ),
      initialRoute: '/',
      onGenerateRoute: (RouteSettings settings) {
        switch (settings.name) {
          case '/':
            return MaterialPageRoute(builder: (_) => const HomeScreen());
          case '/detail':
            Map<String, dynamic> args =
                settings.arguments as Map<String, dynamic>;
            return MaterialPageRoute(
                builder: (_) => UserDetail(arguments: args));
        }
      },
    );
  }
}
