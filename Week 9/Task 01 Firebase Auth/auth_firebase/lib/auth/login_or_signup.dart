import 'package:auth_firebase/screens/login_screen.dart';
import 'package:auth_firebase/screens/sign_up_screen.dart';
import 'package:flutter/material.dart';

class LoginOrSignup extends StatefulWidget {
  const LoginOrSignup({super.key});

  @override
  State<LoginOrSignup> createState() => _LoginOrSignupState();
}

class _LoginOrSignupState extends State<LoginOrSignup> {
  // initially show login screen
  bool showLoginScreen = true;

  // toggle between login and signup screen
  void toggleScreens() {
    setState(() {
      showLoginScreen = !showLoginScreen;
    });
  }

  @override
  Widget build(BuildContext context) {
    if (showLoginScreen) {
      return LoginScreen(onTap: toggleScreens);
    } else {
      return SignUpScreen(onTap: toggleScreens);
    }
  }
}
