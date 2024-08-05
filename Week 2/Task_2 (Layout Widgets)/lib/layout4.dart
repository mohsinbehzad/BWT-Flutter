//Center

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Layout4 extends StatelessWidget {
  const Layout4({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          color: Colors.greenAccent,
          height: 200,
          width: 200,
        ),
      ),
    );
  }
}