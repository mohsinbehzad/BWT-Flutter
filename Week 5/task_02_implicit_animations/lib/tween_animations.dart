import 'package:flutter/material.dart';

class CircleAnimation extends StatelessWidget {
  const CircleAnimation({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Circle Animation'),
      ),
      body: Center(
        child: TweenAnimationBuilder(
          tween: Tween<double>(begin: 0, end: 230),
          duration: const Duration(milliseconds: 1700),
          builder: (context, size, widget) {
            return Container(
              width: size,
              height: size,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.amber,
                boxShadow: [
                  BoxShadow(
                    color: Colors.teal,
                    blurRadius: size,
                    spreadRadius: size / 2,
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}