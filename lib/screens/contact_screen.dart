import 'package:flutter/material.dart';

class ContactScreen extends StatelessWidget {
  ContactScreen({Key? key}) : super(key: key);

  final List<Map<String, dynamic>> contacts = [
    {
      'name': 'Sudip',
      'phone': '32245232532',
      'email': 'sudeptech@gmail.com',
    },
    {
      'name': 'Alex',
      'phone': '87654678',
      'email': 'alex@gmail.com',
    },
    {
      'name': 'Hari',
      'phone': 'f23456754',
      'email': 'hari@gmail.com',
    },
    {
      'name': 'Shyam',
      'phone': '435675863546',
      'email': 'shyam@gmail.com',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Contact')),
      body: SafeArea(
        child: ListView.separated(
          separatorBuilder: (context, int index) {
            return Divider(
              color: Colors.red,
            );
          },
          itemCount: contacts.length,
          itemBuilder: (context, int index) {
            Map<String, dynamic> contact = contacts[index];
            return ListTile(
              title: Text(
                contact['name'],
                style: TextStyle(
                    color: index == 0 ? Colors.red : Colors.black87,
                    fontWeight: FontWeight.bold),
              ),
              subtitle: Text(contact['phone']),
              leading: CircleAvatar(child: Text(contact['name'][0])),
            );
          },
        ),
        // child: ListView(
        //   padding: const EdgeInsets.all(8.0),
        //   children: contacts
        //       .map(
        //         (el) => ListTile(
        //           leading: CircleAvatar(
        //             child: Text(el['name'][0]),
        //           ),
        //           title: Text(el['name']),
        //           subtitle: Text(el['phone']),
        //         ),
        //       )
        //       .toList(),
        // ),
      ),
    );
  }
}
