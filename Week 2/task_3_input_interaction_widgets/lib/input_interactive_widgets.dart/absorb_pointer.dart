import 'package:flutter/material.dart';
import 'package:task_3_input_interaction_widgets/input_interactive_widgets.dart/dismissible.dart';

class InteractiveWidgets extends StatelessWidget {
  const InteractiveWidgets({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text('Absorb Pointer')),
        backgroundColor: Colors.amber,
        actions: [
          InkWell(
              child: const Icon(Icons.widgets_outlined),
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => const InteractiveWidgets2()));
              },
          ),
        ],

      ),
      body: Center(
        child: Stack(
          alignment: AlignmentDirectional.center,
          children: <Widget>[
            SizedBox(
              width: 200,
              height: 100,
              child: ElevatedButton(
                onPressed: (){},
                child: null,
              ),
            ),
            SizedBox(
              width: 100,
              height: 200,
              child: AbsorbPointer(
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue.shade200,
                  ),
                  onPressed: (){},
                  child: null,
                ),
              ),
            )
          ],
          
        ),
      ),
    );
  }
}