import 'package:flutter/material.dart';
import 'package:task_02_routing/home_screen.dart';
import 'package:task_02_routing/screen_two.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        appBarTheme: const AppBarTheme(color: Colors.blue, centerTitle: true)
      ),
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => const HomeScreen(),
        '/second': (context) => const ScreenTwo(),
      },
      initialRoute: '/',
    );
  }
}

// instead of home: now we will use routes: