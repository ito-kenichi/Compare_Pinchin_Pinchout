import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  static const String _title = "InteractiveViewer Sample";

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: _title,
      home: Scaffold(
        appBar: AppBar(
          title: const Text(_title),
        ),
        body: MystateLessWidget(),
      ),
    );
  }
}

class MystateLessWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(child: MyHome());
  }
}

class MyHome extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return MyHomeState();
  }
}

class MyHomeState extends State<MyHome> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: InteractiveViewer(
        boundaryMargin: EdgeInsets.all(20.0),
        minScale: 0.1,
        maxScale: 1.6,
        child: new Image.asset(
          'assets/image001.jpg',
          height: 600,
          width: 800,
        ),
      ),
    );
  }
}