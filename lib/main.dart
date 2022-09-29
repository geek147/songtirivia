import 'package:flutter/material.dart';
import 'package:songtrivia/feature/quiz/screen/home.dart';

void main() {
  runApp(const MyApp());
}

// test ci
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const HomeScreen(title: 'Flutter Demo Home Page'),
    );
  }
}
