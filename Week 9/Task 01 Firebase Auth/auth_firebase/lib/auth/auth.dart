import 'package:auth_firebase/auth/login_or_signup.dart';
import 'package:auth_firebase/screens/home_screen.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class AuthScreen extends StatelessWidget {
  const AuthScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StreamBuilder(stream: FirebaseAuth.instance.authStateChanges(),
       builder: (context, snapshot) {
        if(snapshot.hasData){
          return const HomeScreen();
        }
        else {
          return const LoginOrSignup();
        }
       }
       ),
    );
  }
}