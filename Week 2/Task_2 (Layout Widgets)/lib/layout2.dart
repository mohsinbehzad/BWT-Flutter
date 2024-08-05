//Expanded, flex

import 'package:flutter/material.dart';

class Layout2 extends StatelessWidget {
  const Layout2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          Expanded(                                                         // while using expanded widget, there is no need to use height
          flex: 2,                                                          // flex determines how much space each child should occupy relative to the other children with different flex factors. means average of all flex widgets
            child: Container(
              color: Colors.amber,
              // height: 300,
              width: 300,
              child: const Center(
                child: Text('Mohsin'),
              ),
            ),
          ),
          Expanded(
            flex: 4,
            child: Container(
              color: Colors.blue,
              // height: 300,
              width: 300,
              child: const Center(
                child: Text('Behzad'),
              ),
            ),
          ),
          Expanded(
            flex: 2,
            child: Container(
              color: Colors.black,
              // height: 200,
              width: 300,
              child: const Center(
                child: Text('Mardan'),
              ),
            ),
          )
        ],
      ),
    );
  }
}
