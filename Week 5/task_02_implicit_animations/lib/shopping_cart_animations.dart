import 'package:flutter/material.dart';
import 'package:task_02_implicit_animations/tween_animations.dart';

class ShoppingCartAnimation extends StatefulWidget {
  const ShoppingCartAnimation({super.key});

  @override
  State<ShoppingCartAnimation> createState() => _ShoppingCartAnimationState();
}

class _ShoppingCartAnimationState extends State<ShoppingCartAnimation> {
  bool isExpanded = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Shopping Cart'),
        actions: [
          InkWell(
            child: const Padding(
              padding: EdgeInsets.all(8.0),
              child: Icon(Icons.circle),
            ),
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=> const CircleAnimation()));
            },
          )
        ],
      ),
      body: Center(
        child: GestureDetector(
          onTap: () {
            setState(() {
              isExpanded = !isExpanded;
            });
          },
          child: AnimatedContainer(
            duration: const Duration(milliseconds: 1200),
            width: isExpanded ? 150 : 80.0,
            height: 60.0,
            decoration: BoxDecoration(
              color: isExpanded ? Colors.green : Colors.blue[900],
              borderRadius: BorderRadius.circular(isExpanded ? 33 : 11.0),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Icon(
                  isExpanded ? Icons.check : Icons.shopping_cart,
                  color: Colors.white,
                ),
                if (isExpanded)
                  const Text(
                    'Added to Cart!',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}