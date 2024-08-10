import 'package:flutter/material.dart';
import 'package:task_01_signup_form/signup_form.dart';

void main(){
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        appBarTheme: const AppBarTheme(backgroundColor: Colors.blue),
        primarySwatch: Colors.blue
      ),
      home: const SignUpForm(),
    );
  }
}