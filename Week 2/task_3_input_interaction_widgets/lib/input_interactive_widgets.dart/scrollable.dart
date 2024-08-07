import 'package:flutter/material.dart';

class InteractiveWidgets5 extends StatefulWidget {
  const InteractiveWidgets5({super.key});

  @override
  State<InteractiveWidgets5> createState() => _InteractiveWidgets5State();
}

class _InteractiveWidgets5State extends State<InteractiveWidgets5> {
  final ScrollController controller = ScrollController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text('Scrollable')),
        backgroundColor: Colors.blue,
      ),
      body: Scrollbar(
          controller: controller,
          child: ListView.builder(
              controller: controller,
              itemCount: 50,
              itemBuilder: (BuildContext context, int index) {
                return ListTile(
                  title: Text('Item ${index + 1}'),
                );
              })),
    );
  }
}