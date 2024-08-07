import 'package:flutter/material.dart';
import 'package:task_3_input_interaction_widgets/input_interactive_widgets.dart/gesture_detector.dart';

class InteractiveWidgets3 extends StatefulWidget {
  const InteractiveWidgets3({super.key});

  @override
  State<InteractiveWidgets3> createState() => _InteractiveWidgets3State();
}

class _InteractiveWidgets3State extends State<InteractiveWidgets3> {
  Color caughtColor = Colors.red;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Center(child: Text('Draggable')),
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
                        builder: (context) => const InteractiveWidgets4()));
              },
            ),
          ]),
      body: SizedBox(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Draggable(
                data: Colors.purple,
                onDraggableCanceled: (velocity, offset) {},
                feedback: Container(
                  width: 150,
                  height: 150,
                  color: Colors.blue,
                  child: const Center(
                    child: Text(
                      'Drag me',
                      style: TextStyle(
                          color: Colors.white,
                          decoration: TextDecoration.none,
                          fontSize: 20),
                    ),
                  ),
                ),
                child: Container(
                  width: 100,
                  height: 100,
                  color: Colors.indigo,
                  child: const Center(
                    child: Text('Drag me'),
                  ),
                )),
            DragTarget(builder: (
              BuildContext context,
              List<dynamic> accepted,
              List<dynamic> rejected,
            ) {
              return Container(
                width: 200,
                height: 200,
                color: accepted.isEmpty ? caughtColor : Colors.grey,
                child: const Center(child: Text('Drag here')),
              );
            })
          ],
        ),
      ),
    );
  }
}
