import 'package:flutter/material.dart';
import 'package:task_03_adaptive_responsive_design/orientation.dart';

class ScreenTwo extends StatelessWidget {
  const ScreenTwo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        centerTitle: true,
        title: const Text('Aspect Ratio'),
        actions: [
          GestureDetector(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const ScreenThree()));
              },
              child: const Padding(
                padding: EdgeInsets.all(8.0),
                child: Icon(Icons.widgets),
              ))
        ],
      ),
      body: Container(
        color: Colors.amber,
        alignment: Alignment.center,
        width: double.infinity,
        height: 300,
        child: AspectRatio(
          aspectRatio: 16 / 9,
          child: Container(
            color: Colors.green,
          ),
        ),
      ),
    );
  }
}
