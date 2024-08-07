import 'package:flutter/material.dart';
import 'package:task_1_navigation/screen_two.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Page'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const ScreenTwo()),
            );
          },
          child: const Text('Go to Screen Two'),
        ),
      ),
    );
  }
}