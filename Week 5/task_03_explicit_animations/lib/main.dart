import 'package:flutter/material.dart';
import 'package:task_03_explicit_animations/login_animation.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LoginScreenAnimation(),
    );
  }
}