import 'package:flutter/material.dart';
import 'package:myfirstapp/screens/HomeScreen.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  late SharedPreferences prefs;
  late bool isLoggedIn;

  @override
  void initState() {
    super.initState();
    checkForLogin();
  }

  checkForLogin() async {
    prefs = await SharedPreferences.getInstance();
    isLoggedIn = prefs.getBool('loggedIn') ?? false;

    if (isLoggedIn) {
      Navigator.pushReplacementNamed(context, '/');
    }
  }

  @override
  void dispose() {
    _usernameController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              controller: _usernameController,
              decoration: const InputDecoration(
                labelText: 'Username',
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(
              height: 12,
            ),
            TextField(
              controller: _passwordController,
              obscureText: true,
              decoration: const InputDecoration(
                labelText: 'Password',
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
              onPressed: () async {
                if (_usernameController.text.isEmpty ||
                    _passwordController.text.isEmpty) {
                  return;
                }

                // Initialize shared preferences
                final prefs = await SharedPreferences.getInstance();

                // save required data
                await prefs.setBool('loggedIn', true);
                await prefs.setString('username', _usernameController.text);

                // Navigate to homepage
                Navigator.pushReplacementNamed(context, '/');

                // await prefs.setInt('age', 11);
                // await prefs.setString('username', 'sudip');
                // await prefs.setBool('isLoggedIn', false);
                // int age = await prefs.getInt('age') ?? 0;
                // print(age);
              },
              child: const Text('Login'),
            )
          ],
        ),
      ),
    );
  }
}
