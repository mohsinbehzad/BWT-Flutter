// Sized Box, Spacer
// SizedBox is mainly used for spacing but if given a child(e.g:image), this widget forces its child to have a specific width and/or height

import 'package:flutter/material.dart';
import 'package:layout_widgets/layout2.dart';

class Layout1 extends StatelessWidget {
  const Layout1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.blue,
          title: const Text('Single Scroll View'),
          actions: [
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: InkWell(child: const Icon(Icons.navigate_next),
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => const Layout2()));
              },
              ),
            )
          ],
        ),
      body: Column(
        children: <Widget>[
          Container(
            color: Colors.amber,
            height: 200,
            width: 300,
            child: const Center(
              child: Text('Mohsin'),
            ),
          ),
          const Spacer(),                                            // it takes all the available space in between
          const SizedBox(
            height: 50,
          ),
          Container(
            color: Colors.blue,
            height: 300,
            width: 500,
            child: const Center(
              child: Text('Behzad'),
            ),
          ),
          const SizedBox(
            height: 60,
          ),
          Container(
            color: Colors.black,
            height: 100,
            width: 300,
            child: const Center(
              child: Text('Mardan'),
            ),
          )
        ],
      ),
    );
  }
}