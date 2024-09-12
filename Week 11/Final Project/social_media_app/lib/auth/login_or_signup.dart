import 'package:flutter/material.dart';
import 'package:social_media_app/view/login_screen.dart';
import 'package:social_media_app/view/signup_screen.dart';

class LoginOrSignup extends StatefulWidget {
  const LoginOrSignup({super.key});

  @override
  State<LoginOrSignup> createState() => _LoginOrSignupState();
}

class _LoginOrSignupState extends State<LoginOrSignup> {
  //initially show the Login Screen

  bool showLoginScreen = true;

  void toggleScreens() {
    setState(
      () {
        showLoginScreen = !showLoginScreen;
      },
    );
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
