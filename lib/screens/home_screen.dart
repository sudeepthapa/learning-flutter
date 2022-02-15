import 'package:flutter/material.dart';
import 'package:myfirstapp/components/custom_circle_avatar.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Order1'),
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.favorite))
        ],
      ),
      body: SafeArea(
        child: ListView(
          children: [
            SizedBox(height: 20),
            ListTile(
              leading: CircleAvatar(
                child: Icon(Icons.image),
                radius: 30,
              ),
              title: Text('Hello World'),
              subtitle: Text(
                  'This is a first flutter apploication that I am building today'),
              trailing: Icon(Icons.delete),
            ),
            Divider(),
            ListTile(
              leading: CircleAvatar(
                child: Icon(Icons.image),
                radius: 30,
              ),
              title: Text('Hello World'),
              subtitle: Text(
                  'This is a first flutter apploication that I am building today'),
              trailing: Icon(Icons.delete),
            ),
            Divider(),
            ListTile(
              leading: CircleAvatar(
                child: Icon(Icons.image),
                radius: 30,
              ),
              title: Text('Hello World'),
              subtitle: Text(
                  'This is a first flutter apploication that I am building today'),
              trailing: Icon(Icons.delete),
            ),
            SizedBox(height: 20),
            Container(
              height: 120,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: CircleAvatar(
                      backgroundColor: Colors.lightBlue,
                      radius: 50,
                      child: Icon(
                        Icons.person,
                        size: 50,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: const CircleAvatar(
                      backgroundColor: Colors.lightBlue,
                      radius: 50,
                      backgroundImage: NetworkImage(
                          'https://upload.wikimedia.org/wikipedia/commons/thumb/b/b6/Image_created_with_a_mobile_phone.png/1200px-Image_created_with_a_mobile_phone.png'),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: 100,
                      width: 100,
                      color: Colors.red,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: 100,
                      width: 100,
                      color: Colors.red,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: 100,
                      width: 100,
                      color: Colors.red,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: 100,
                      width: 100,
                      color: Colors.red,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: 100,
                      width: 100,
                      color: Colors.red,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: 100,
                      width: 100,
                      color: Colors.red,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),
            Container(
              width: double.infinity,
              height: 200,
              color: Colors.green,
              child: Center(
                child: CustomCircleAvatar(
                  color: Colors.pink[300],
                  radius: 60,
                  bgImage: NetworkImage(
                      'https://upload.wikimedia.org/wikipedia/commons/thumb/b/b6/Image_created_with_a_mobile_phone.png/1200px-Image_created_with_a_mobile_phone.png'),
                  child: Icon(
                    Icons.person,
                    size: 40,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 20),
            Container(
              width: double.infinity,
              height: 200,
              color: Colors.green,
              child: Stack(
                children: [
                  Container(
                    width: double.infinity,
                    height: 200,
                    color: Colors.purple,
                    child: Image.network(
                      'https://upload.wikimedia.org/wikipedia/commons/thumb/b/b6/Image_created_with_a_mobile_phone.png/1200px-Image_created_with_a_mobile_phone.png',
                      fit: BoxFit.cover,
                    ),
                  ),
                  Positioned(
                    left: -60,
                    top: -10,
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        color: Colors.deepOrange.withOpacity(0.4),
                      ),
                      width: 100,
                      height: 100,
                    ),
                  ),
                  Positioned(
                    bottom: 0,
                    right: 0,
                    child: Container(
                      width: 400,
                      height: 60,
                      color: Colors.blueAccent.withOpacity(0.5),
                      child: const Center(child: Text('Image Caption')),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
