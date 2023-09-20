import 'package:flutter/material.dart';
import 'package:untitled3/mainpage.dart';
import 'package:untitled3/tes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
home: MainPage(),
    );
  }
}
