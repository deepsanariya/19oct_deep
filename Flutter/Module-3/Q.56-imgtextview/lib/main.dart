import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Images Around Text'),
      ),
      body: Center(
        child: Stack(
          children: <Widget>[
            // First Image - Top Left
            Positioned(
              left: 10,
              top: 10,
              child: Image.asset(
                'assets/1.jpeg',
                width: 100,
                height: 100,
              ),
            ),
            // Second Image - Top Right
            Positioned(
              right: 10,
              top: 10,
              child: Image.asset(
                'assets/2.jpeg',
                width: 100,
                height: 100,
              ),
            ),
            // Third Image - Bottom Left
            Positioned(
              left: 10,
              bottom: 10,
              child: Image.asset(
                'assets/3.jp3g',
                width: 100,
                height: 100,
              ),
            ),
            // Fourth Image - Bottom Right
            Positioned(
              right: 10,
              bottom: 10,
              child: Image.asset(
                'assets/4.jpeg',
                width: 100,
                height: 100,
              ),
            ),
            // Text in the center
            Center(
              child: Text(
                'Text surrounded by images',
                style: TextStyle(fontSize: 20),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
