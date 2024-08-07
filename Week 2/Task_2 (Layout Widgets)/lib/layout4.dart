//Center

import 'package:flutter/material.dart';
import 'package:layout_widgets/layout5.dart';

class Layout4 extends StatelessWidget {
  const Layout4({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Text('Center'),
        actions: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: InkWell(
              child: const Icon(Icons.navigate_next),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const Layout5()));
              },
            ),
          )
        ],
      ),
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
