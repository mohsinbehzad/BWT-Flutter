import 'package:flutter/material.dart';

class AssetsSetState extends StatefulWidget {
  const AssetsSetState({super.key});

  @override
  State<AssetsSetState> createState() => _AssetsSetStateState();
}

class _AssetsSetStateState extends State<AssetsSetState> {
  bool _showFirstImage = true;

  void _toggleImage() {
    setState(() {
      _showFirstImage = !_showFirstImage;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Center(child: Text('Image Toggle by setState')),
      ),
      body: Center(
        child: Expanded(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              _showFirstImage
                  ? Image.asset('assets/assets_image1.jpg')
                  : Image.asset('assets/assets_image2.jpg'),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: _toggleImage,
                child: const Text('Toggle Image'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
