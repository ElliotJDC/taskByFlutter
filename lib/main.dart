import 'package:flutter/material.dart';
import 'controller/MainPage.dart';

void main() => runApp(new TaskListApp());

class TaskListApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Flutter Demo',
      theme: new ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: new MainPage(),
    );
  }
}
