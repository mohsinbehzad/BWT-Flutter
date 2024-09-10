import 'package:flutter/material.dart';
import 'package:multi_theme_app_using_mvvm/view/components/myBox.dart';
import 'package:multi_theme_app_using_mvvm/view/components/myButton.dart';
import 'package:multi_theme_app_using_mvvm/viewModels/theme_view_model.dart';
import 'package:provider/provider.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    final themeViewModel = Provider.of<ThemeViewModel>(context, listen: false); 

    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body: Center(
        child: MyBox(
          color: Theme.of(context).colorScheme.primary,
          child: MyButton(
            color: Theme.of(context).colorScheme.secondary,
            onTap: () {
              themeViewModel.toggleTheme(); 
            },
          ),
        ),
      ),
    );
  }
}
