//align

import 'package:flutter/material.dart';

class Layout3 extends StatelessWidget {
  const Layout3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
      ),
      body: Align(                                //Align has alignment property
        alignment: Alignment.bottomCenter,       
        child: Container(
          color: Colors.amber,
          height: 150,
          width: 150,
        ),
      ),
    );
  }
}