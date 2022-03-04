import 'package:flutter/material.dart';
import 'package:myfirstapp/screens/create_post.dart';
import 'package:myfirstapp/screens/search_screen.dart';

class ShoppingScreen extends StatelessWidget {
  const ShoppingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          bottom: const TabBar(
            tabs: [
              Tab(
                icon: Icon(
                  Icons.baby_changing_station,
                ),
                text: 'Baby',
              ),
              Tab(
                icon: Icon(
                  Icons.railway_alert,
                ),
                text: 'Railway',
              )
            ],
          ),
        ),
        body: const TabBarView(children: [SearchScreen(), CreatePost()]),
      ),
    );
  }
}
