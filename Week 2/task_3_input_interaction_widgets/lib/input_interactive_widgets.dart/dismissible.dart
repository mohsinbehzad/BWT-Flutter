import 'package:flutter/material.dart';
import 'package:task_3_input_interaction_widgets/input_interactive_widgets.dart/draggable_drag_target.dart';

class InteractiveWidgets2 extends StatelessWidget {
  InteractiveWidgets2({super.key});

  final items = List<String>.generate(10, (index) => 'Item $index');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Center(child: Text('Dismissible')),
          backgroundColor: Colors.amber,
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
                        builder: (context) => const InteractiveWidgets3()));
              },
            ),
          ]),
      body: ListView.builder(
        itemCount: items.length,
        itemBuilder: (context, index) {
          return Dismissible(
            key: Key(items[index]),
            onDismissed: (direction) {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  content: Text('${items[index]} dismissed'),
                ),
              );
            },
            background: Container(
              color: Colors.red,
              child: const Icon(Icons.delete),
            ),
            child: ListTile(
              title: Text(items[index]),
            ),
          );
        },
      ),
    );
  }
}
