import 'package:flutter/material.dart';
import 'package:myfirstapp/components/common/custom_app_bar.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: PreferredSize(
          child: CustomAppBar(
            title: Text('Home'),
          ),
          preferredSize: Size.fromHeight(60)),
    );
  }
}
