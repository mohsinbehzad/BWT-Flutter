import 'package:flutter/material.dart';
import 'package:task_3_input_interaction_widgets/input_interactive_widgets.dart/scrollable.dart';

class InteractiveWidgets4 extends StatefulWidget {
  const InteractiveWidgets4({super.key});

  @override
  State<InteractiveWidgets4> createState() => _InteractiveWidgets4State();
}

class _InteractiveWidgets4State extends State<InteractiveWidgets4> {
  int _counter = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Center(child: Text('Gesture Detector')),
          backgroundColor: Colors.blue,
          actions: [
            InkWell(
              child: const Padding(
                padding: EdgeInsets.all(10.0),
                child: Icon(Icons.widgets_outlined),
              ),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const InteractiveWidgets5()));
              },
            ),
          ]),
      body: Center(
        child: GestureDetector(
          onTap: () {
            setState(() {
              _counter += 1;
            });
          },
          child: Container(
            width: 200,
            height: 200,
            color: Colors.amber,
            child: Center(
              child: Text(
                _counter.toString(),
                style: const TextStyle(fontSize: 50),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
