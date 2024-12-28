import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: MyFirstProjectPage(),
  ));
}

class MyFirstProjectPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My First Project'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Row for displaying images
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // Image from assets
                Image.asset(
                  'assets/images/image.jpg',
                  width: 100,
                  height: 100,
                ),
                SizedBox(width: 20), // Gap between images
                // Image from internet
                Image.network(
                  'https://fastly.picsum.photos/id/335/200/300.jpg?hmac=G81PbTg8uAk00mCq0eZdiTJwpa_-_FvFZJVhEGcouXQ',
                  width: 100,
                  height: 100,
                ),
              ],
            ),

            // Gap between the row of images and the text
            SizedBox(height: 20),

            // Customized text
            Text(
              'The two images are displayed',
              style: TextStyle(
                fontSize: 18,
                fontFamily: 'Suwannaphum-Regular',
                color: Colors.blue,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
