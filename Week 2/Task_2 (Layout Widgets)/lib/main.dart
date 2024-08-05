import 'package:flutter/material.dart';
import 'package:layout_widgets/layout1.dart';
import 'package:layout_widgets/layout2.dart';
import 'package:layout_widgets/layout3.dart';
import 'package:layout_widgets/layout4.dart';
import 'package:layout_widgets/layout5.dart';
import 'package:layout_widgets/layout6.dart';
import 'package:layout_widgets/singleScrollView.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SingleScrollView(),
    );
  }
}