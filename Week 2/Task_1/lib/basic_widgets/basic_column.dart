// Column widget displays its children in a vertical array
// Column has multiple child widgets and you cannot scroll it. ListView is used for scrolling
// Properties of Column widgets are children, crossAxisAlignment, textDirection, verticalDirection, mainAxisAlignment, mainAxisSize, textBaseline

import 'package:basic_widgets/basic_widgets/row_basics.dart';
import 'package:flutter/material.dart';

class ColumnBasics extends StatelessWidget {
  const ColumnBasics({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          // crossAxisAlignment: CrossAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          // verticalDirection: VerticalDirection.up,
          verticalDirection: VerticalDirection.down,

          children: [
            Container(
              color: Colors.lightBlue,
              padding: const EdgeInsets.all(25),
              child: const Text(
                'First',
                style: TextStyle(color: Colors.amber, fontSize: 20),
              ),
            ),
            Container(
              color: Colors.green,
              child: const Text('Second', style: TextStyle(fontSize: 40),),
            ),

            InkWell(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const RowBasics()));
              },
              child: Container(
                height: 30,
                width: double.infinity,
                decoration: const BoxDecoration(color: Colors.cyan),
                child: const Center(
                  child: Text('Rows'),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
