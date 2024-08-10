import 'package:flutter/material.dart';

class ScreenThree extends StatelessWidget {
  const ScreenThree({super.key});

  @override
  Widget build(BuildContext context) {
    var orientation = MediaQuery.of(context).orientation;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        centerTitle: true,
        title: const Text('Orientation'),
      ),
      body: orientation == Orientation.portrait
          ? _buildPortraitLayout()
          : _buildLandscapeLayout(),
    );
  }

  Widget _buildPortraitLayout() {
    return const Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(Icons.portrait, size: 100, color: Colors.blue),
          SizedBox(height: 20),
          Text('Portrait Mode', style: TextStyle(fontSize: 24)),
        ],
      ),
    );
  }

  Widget _buildLandscapeLayout() {
    return const Center(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(Icons.landscape, size: 100, color: Colors.green),
          SizedBox(width: 20),
          Text('Landscape Mode', style: TextStyle(fontSize: 24)),
        ],
      ),
    );
  }
}
