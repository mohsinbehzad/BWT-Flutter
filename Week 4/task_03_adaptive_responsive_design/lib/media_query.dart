import 'package:flutter/material.dart';
import 'package:task_03_adaptive_responsive_design/aspect_ratio.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          centerTitle: true,
          title: const Text('MediaQuery'),
          actions: [GestureDetector(
          onTap: (){
            Navigator.push(context, MaterialPageRoute(builder: (context) => const ScreenTwo()));
          },
          child: const Padding(
            padding: EdgeInsets.all(8.0),
            child: Icon(Icons.widgets),
          ))],
        ),
        body: Row(children: [
          Container(
            height: screenHeight,
            width: screenWidth*0.2,
            color: Colors.amber,
          ),
          Container(
            height: screenHeight*0.2,
            width: screenWidth*0.2,
            color: Colors.green,
          ),
          Container(
            height: screenHeight*0.5,
            width: screenWidth*0.2,
            color: Colors.red,
          ),
          Container(
            height: screenHeight*0.2,
            width: screenWidth*0.2,
            color: Colors.blue,
          ),
          Container(
            height: screenHeight,
            width: screenWidth*0.2,
            color: Colors.orange,
          ),
        ]));
  }
}
