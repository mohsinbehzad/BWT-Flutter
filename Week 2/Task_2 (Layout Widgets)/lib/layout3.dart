//align

import 'package:flutter/material.dart';
import 'package:layout_widgets/layout4.dart';

class Layout3 extends StatelessWidget {
  const Layout3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Text('Align'),
        actions: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: InkWell(
              child: const Icon(Icons.navigate_next),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const Layout4()));
              },
            ),
          )
        ],
      ),
      body: Align(
        //Align has alignment property
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
