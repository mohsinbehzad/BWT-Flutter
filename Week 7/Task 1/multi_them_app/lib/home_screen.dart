import 'package:flutter/material.dart';
import 'package:multi_them_app/components/box.dart';
import 'package:multi_them_app/components/button.dart';
import 'package:multi_them_app/theme/theme_provider.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body: Center(
          child: MyBox(
        color: Theme.of(context).colorScheme.primary,
        child: MyButton(
            color: Theme.of(context).colorScheme.secondary,
            onTap: () {
              Provider.of<ThemeProvider>(context, listen: false).toggleTheme();
            }),
      )),
    );
  }
}
