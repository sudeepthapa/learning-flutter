import 'package:flutter/material.dart';
class CustomAppBar extends StatelessWidget {
  const CustomAppBar({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        width: double.infinity,
        color: Colors.grey.shade300,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text('Home', style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),),
            IconButton(onPressed: (){}, icon: const Icon(Icons.logout))
          ],
        ),
      ),
    );
  }
}