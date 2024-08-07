import 'package:flutter/material.dart';
import 'package:task_04_adding_assets_images/assets_set_state.dart';

void main(){
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: AssetsSetState(),
    );
  }
}