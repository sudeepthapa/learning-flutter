import 'package:flutter/material.dart';
import 'package:myfirstapp/components/common/custom_appbar.dart';
import 'package:myfirstapp/components/todo_form.dart';
import 'package:myfirstapp/components/todo_list.dart';
import 'package:myfirstapp/providers/users_provider.dart';
import 'package:provider/provider.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(100),
        child: CustomAppBar(),
      ),
      body: Stack(
        children: [
          Container(
            width: 400,
            height: 400,
            color: Colors.red
          ),
          Positioned(child: Icon(Icons.abc), right: 10, top: 190,),
          
        ],
      ),
    );
  }
}
