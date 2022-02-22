import 'package:flutter/material.dart';

class FormScreen extends StatefulWidget {
  const FormScreen({Key? key}) : super(key: key);

  @override
  State<FormScreen> createState() => _FormScreenState();
}

class _FormScreenState extends State<FormScreen> {
  final TextEditingController _usernameController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('FormScreen'),
      ),
      body: ListView(
        padding: const EdgeInsets.all(20),
        children: [
          TextField(
            controller: _usernameController,
            decoration: InputDecoration(
              labelText: 'Username',
              icon: Icon(Icons.person),
              helperText: 'Email and username accepted.',
            ),
          ),
          SizedBox(
            height: 15,
          ),
          TextField(
            textCapitalization: TextCapitalization.sentences,
            maxLines: 3,
            decoration: InputDecoration(
              labelText: 'Bio',
              icon: Icon(Icons.biotech),
            ),
          ),
          SizedBox(
            height: 15,
          ),
          TextField(
            maxLines: 1,
            obscureText: true,
            decoration: InputDecoration(
              labelText: 'Password',
              icon: Icon(Icons.lock),
            ),
          ),
          SizedBox(
            height: 15,
          ),
          TextField(
            maxLines: 1,
            keyboardType: TextInputType.phone,
            decoration: InputDecoration(
              labelText: 'Phone',
              icon: Icon(Icons.phone),
            ),
          ),
          SizedBox(
            height: 35,
          ),
          ElevatedButton(
            onPressed: () {
              print(_usernameController.text);
            },
            child: Text('Submit'),
          )
        ],
      ),
    );
  }
}
