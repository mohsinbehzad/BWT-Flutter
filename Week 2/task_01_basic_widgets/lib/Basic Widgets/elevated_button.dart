// Different than textbutton, when user move cursor above it, it shows elevation effect
// Properties of Elevated button are onPressed, onLongPress, style, focusNode, autoFocus, clipbehaviour, child
// Note: child and onPressed is required.

import 'package:flutter/material.dart';

class ElevatedButtonBasics extends StatelessWidget {
  const ElevatedButtonBasics({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Center(
        child: ElevatedButton(
          onPressed: () {print('Press');},
          onLongPress: (){print('long press');},
          child: const Text('Button'),
        ),
      ),
    ));
  }
}
