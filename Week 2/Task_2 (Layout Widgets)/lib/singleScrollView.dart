import 'package:flutter/material.dart';

class SingleScrollView extends StatelessWidget {
  const SingleScrollView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Container(
            color: Colors.amber,
            height: 400,
            width: 300,
            child: const Center(
              child: Text('Mohsin'),
            ),
          ),
          const SizedBox(
            height: 50,
          ),
          Container(
            color: Colors.blue,
            height: 400,
            width: 300,
            child: const Center(
              child: Text('Behzad'),
            ),
          ),
          const SizedBox(
            height: 60,
          ),
          Container(
            color: Colors.black,
            height: 400,
            width: 300,
            child: const Center(
              child: Text('Mardan'),
            ),
          )
        ],
      ),
    ));
  }
}
