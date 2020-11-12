import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text('Belajar Flutter'),
        ),
        body: Column(
          children: [
            MyComponent(
              color: Colors.blue,
              height: 50,
              width: 50,
              text: "Ahihi",
            ),
            MyComponent(
              color: Colors.green,
              height: 50,
              width: 50,
              text: "Ahuhu",
            )
          ],
        ),
      ),
    );
  }
}

class MyComponent extends StatelessWidget {
  final double height;
  final double width;
  final color;
  final String text;

  MyComponent({this.height, this.width, this.color, this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: this.height,
      color: this.color,
      width: this.width,
      child: Text(this.text),
    );
  }
}
