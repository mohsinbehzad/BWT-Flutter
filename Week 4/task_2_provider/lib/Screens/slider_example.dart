import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:task_2_provider/provider/slider_provider.dart';

class SliderExample extends StatefulWidget {
  const SliderExample({super.key});

  @override
  State<SliderExample> createState() => _SliderExampleState();
}

class _SliderExampleState extends State<SliderExample> {
  // double value = 1;
  @override
  Widget build(BuildContext context) {
    print('build');
    final sliderProvider = Provider.of<SliderProvider>(context, listen: false);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Text('Slider'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Consumer<SliderProvider>(builder: (context, value, child) {
            return Slider(
                value: sliderProvider.value,
                onChanged: (val) {
                  sliderProvider.setValue(val);
                });
          }),
          Consumer<SliderProvider>(builder: (context, value, child) {
            return Row(
              children: [
                Expanded(
                  child: Container(
                    height: 100,
                    color: Colors.red.withOpacity(sliderProvider.value),
                    child: const Center(child: Text('Red')),
                  ),
                ),
                Expanded(
                  child: Container(
                    height: 100,
                    color: Colors.amber.withOpacity(sliderProvider.value),
                    child: const Center(child: Text('Amber')),
                  ),
                )
              ],
            );
          }),
        ],
      ),
    );
  }
}

// In above code you can use value.value instead of sliderProvider.value as well