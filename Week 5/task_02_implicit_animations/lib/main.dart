import 'package:flutter/material.dart';
import 'package:task_02_implicit_animations/animated_pallete.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        appBarTheme: const AppBarTheme(color: Colors.blue, centerTitle: true),
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.purple),
      ),
      home: const AnimatedPalette(),
    );
  }
}