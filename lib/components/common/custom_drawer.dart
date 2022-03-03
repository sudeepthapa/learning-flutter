import 'package:flutter/material.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: const EdgeInsets.all(10),
        children: [
          DrawerHeader(
            child: SizedBox(
              height: 150,
              width: double.maxFinite,
              child: ListView(
                children: const [
                  CircleAvatar(
                    child: Text('AB'),
                    radius: 40,
                  ),
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text(
                      'Sudip',
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 20),
                    ),
                  ),
                  Text(
                    'sudeptech@gmail.com',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 12),
                  ),
                ],
              ),
            ),
          ),
          const Divider(
            color: Colors.grey,
          ),
          const ListTile(
            title: Text('All mails'),
            leading: Icon(Icons.mail_outline),
          ),
          const ListTile(
            title: Text('Favourites'),
            leading: Icon(Icons.favorite_border_outlined),
          ),
          const ListTile(
            title: Text('Logout'),
            leading: Icon(Icons.logout_outlined),
          ),
        ],
      ),
    );
  }
}
