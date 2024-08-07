import 'package:flutter/material.dart';
import 'dart:math';

import 'package:task_02_implicit_animations/shopping_cart_animations.dart';

class AnimatedPalette extends StatefulWidget {
  const AnimatedPalette({super.key});

  @override
  State<AnimatedPalette> createState() => _AnimatedPaletteState();
}

class _AnimatedPaletteState extends State<AnimatedPalette> {
  List<Color> currentPalette = generateRandomPalette();

  static List<Color> generateRandomPalette() {
    final random = Random();
    return List.generate(
      5,
      (_) => Color.fromRGBO(
        random.nextInt(256),
        random.nextInt(256),
        random.nextInt(256),
        1,
      ),
    );
  }

  void regeneratePalette() {
    setState(() {
      currentPalette = generateRandomPalette();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Color Palette Generator'),
        actions: [
          InkWell(
            child: const Padding(
              padding: EdgeInsets.all(8.0),
              child: Icon(Icons.shopping_cart),
            ),
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=> const ShoppingCartAnimation()));
            },
          )
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            for (Color color in currentPalette)
              AnimatedContainer(
                duration: const Duration(milliseconds: 700),
                width: 120,
                height: 120,
                color: color,
                margin: const EdgeInsets.all(10),
              ),
            ElevatedButton(
              onPressed: regeneratePalette,
              child: const Text('Generate New Palette'),
            ),
          ],
        ),
      ),
    );
  }
}