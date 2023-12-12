import 'package:flutter/material.dart';
import 'package:flutter_application_1/frontPage.dart';

void main() {
  runApp(const Todolist());
}

class Todolist extends StatelessWidget {
  const Todolist({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home:frontPage(),
    );
  }
}