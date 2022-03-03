import 'package:flutter/material.dart';
import 'package:myfirstapp/components/common/custom_app_bar.dart';
import 'package:myfirstapp/components/common/custom_drawer.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PreferredSize(
        child: CustomAppBar(
          title: Text('Home'),
        ),
        preferredSize: Size.fromHeight(60),
      ),
      body: const Center(
        child: Text('Home Page'),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(Icons.create),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
      drawer: const CustomDrawer(),
    );
  }
}
