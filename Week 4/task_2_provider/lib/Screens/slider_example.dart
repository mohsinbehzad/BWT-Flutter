import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class SliderExample extends StatefulWidget {
  const SliderExample({super.key});

  @override
  State<SliderExample> createState() => _SliderExampleState();
}

class _SliderExampleState extends State<SliderExample> {
  double value = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Text('Slider'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Slider(
            min: 0,
            max: 1,
              value: value,
              onChanged: (val) {
                value = val;
                setState(() {

                });
              }),
          Row(
            children: [
              Expanded(
                child: Container(
                  height: 100,
                  color: Colors.red.withOpacity(value),
                  child: const Center(child: Text('Red')),
                ),
              ),
              Expanded(
                child: Container(
                  height: 100,
                  color: Colors.amber.withOpacity(value),
                  child: const Center(child: Text('Amber')),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
