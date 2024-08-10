// Row widget displays its children in Horizontal array
// Row has multiple child widgets and you cannot scroll it. ListView is used for scrolling
// Properties of Column widgets are children, crossAxisAlignment, textDirection, verticalDirection, mainAxisAlignment, mainAxisSize, textBaseline


import 'package:flutter/material.dart';

class RowBasics extends StatelessWidget {
  const RowBasics({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(

        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        textDirection: TextDirection.rtl,

        children: [
          Container(
            padding: const EdgeInsets.all(30),
            color: Colors.orange,
            child: const Text('First'),
          ),
          Container(
            padding: const EdgeInsets.all(30),
            color: Colors.green,
            child: const Text('First'),
          ),
          Container(
            padding: const EdgeInsets.all(30),
            color: Colors.lightBlueAccent,
            child: const Text('First'),
          ),
        ],
      ),
    );
  }
}