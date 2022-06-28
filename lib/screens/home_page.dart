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
      body: Column(
        children: [
          Expanded(
            child: Container(
              color: Colors.black,
              child: ListView.builder(reverse: true, itemCount: 20, itemBuilder: (context, index){
                return Container(
                  width: 100,
                  alignment: Alignment.centerRight,
                  margin: EdgeInsets.only(bottom: 8),
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(color: Colors.grey)
                  ),
                  child: Text("Message $index", style: TextStyle(color: Colors.white),),
                );
              }),
            ),
          ),
          Container(
            child: const TextField(
              decoration: InputDecoration(border: OutlineInputBorder(), prefixIcon: Icon(Icons.camera_alt)),
            ),
          )
        ],
      ),
    );
  }
}
