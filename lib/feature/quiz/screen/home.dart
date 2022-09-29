import 'package:flutter/material.dart';
import 'package:songtrivia/feature/quiz/widgets/synth.dart';
import 'package:songtrivia/feature/quiz/widgets/synthesize.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: const SynthScreen(),
    );
  }
}
