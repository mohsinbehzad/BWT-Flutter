// padding

import 'package:flutter/material.dart';

class Layout5 extends StatelessWidget {
  const Layout5({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
      ),
      body: Column(
        children: [
          Container(
            height: 300,
            width: 300,
            color: Colors.amberAccent,
            padding: const EdgeInsets.all(50.0),
            child: Container(
              color: Colors.red,
            ),
          ),
          const SizedBox(
            height: 100,
          ),
          Container(
            color: Colors.blueAccent,
            height: 300,
            width: 300,
            padding: const EdgeInsets.only(left: 10, top: 50, bottom: 30),
            child: Container(
              color: Colors.yellowAccent,
            ),
          ),
        ],
      ),
    );
  }
}
