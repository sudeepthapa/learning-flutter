import 'package:flutter/material.dart';

class ContactScreen extends StatefulWidget {
  ContactScreen({Key? key}) : super(key: key);

  @override
  State<ContactScreen> createState() => _ContactScreenState();
}

class _ContactScreenState extends State<ContactScreen> {
  List<Map<String, dynamic>> contacts = [
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

  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _phoneController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();

  deleteContact(email) {
    contacts.removeWhere((element) => element['email'] == email);
    setState(() {});
  }

  addContact(BuildContext context) {
    Map<String, dynamic> contact = {
      'name': _nameController.text,
      'email': _emailController.text,
      'phone': _phoneController.text
    };

    contacts.add(contact);
    _nameController.clear();
    _phoneController.clear();
    _emailController.clear();
    setState(() {});
    Navigator.pop(context);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Contact')),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showModalBottomSheet<void>(
            context: context,
            builder: (BuildContext context) {
              return ListView(
                padding: const EdgeInsets.all(20),
                children: [
                  TextField(
                    controller: _nameController,
                    decoration: const InputDecoration(
                      labelText: 'Name',
                    ),
                  ),
                  const SizedBox(
                    height: 14,
                  ),
                  TextField(
                    controller: _emailController,
                    decoration: const InputDecoration(
                      labelText: 'Email',
                    ),
                  ),
                  const SizedBox(
                    height: 14,
                  ),
                  TextField(
                    controller: _phoneController,
                    decoration: const InputDecoration(
                      labelText: 'Phone',
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  ElevatedButton(
                      onPressed: () {
                        addContact(context);
                      },
                      child: const Text('Save'))
                ],
              );
            },
          );
        },
        child: const Icon(Icons.add),
      ),
      body: SafeArea(
        child: ListView.separated(
          separatorBuilder: (context, int index) {
            return const Divider(
              color: Colors.red,
            );
          },
          itemCount: contacts.length,
          itemBuilder: (context, int index) {
            Map<String, dynamic> contact = contacts[index];
            return ListTile(
              trailing: IconButton(
                  onPressed: () {
                    deleteContact(contact['email']);
                  },
                  icon: const Icon(
                    Icons.delete,
                    color: Colors.red,
                  )),
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
      ),
    );
  }
}
