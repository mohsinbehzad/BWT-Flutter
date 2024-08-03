import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:task_2_provider/Screens/count_example.dart';
import 'package:task_2_provider/provider/count_provider.dart';

void main(){
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => CountProvider(),
      child:const MaterialApp(
        debugShowCheckedModeBanner: false,
      home: CountExample(),
      )
    );
  }
}