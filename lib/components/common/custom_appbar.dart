import 'package:flutter/material.dart';
class CustomAppBar extends StatelessWidget {
  const CustomAppBar({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        width: double.infinity,
        color: Colors.black,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: const [
                 Icon(Icons.arrow_back, color: Colors.white),
                 SizedBox(width: 15,),
                 CircleAvatar(
                  radius: 14,
                  child: Text('A'),
                ),
                SizedBox(width: 15,),
                Text('Home', style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500, color: Colors.white),),
              ],
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 10, vertical: 4),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                border: Border.all(color: Colors.grey)
              ),
              child: Row(
                children: const [
                  Icon(Icons.video_call, color: Colors.white),
                  Icon(Icons.arrow_downward, color: Colors.white)
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}