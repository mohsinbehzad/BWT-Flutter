import 'package:flutter/material.dart';

class Layout6 extends StatelessWidget {
  const Layout6({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: Transform(
          transform: Matrix4.rotationZ(0.5),
          child: Container(
            height: 100,
            width: 100,
            color: Colors.amber,
          ),
        ),
      ),
    );
  }
}
