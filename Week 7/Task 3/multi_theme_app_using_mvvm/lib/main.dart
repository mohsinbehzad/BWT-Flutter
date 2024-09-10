import 'package:flutter/material.dart';
import 'package:multi_theme_app_using_mvvm/view/home_view.dart';
import 'package:multi_theme_app_using_mvvm/viewModels/theme_view_model.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (context) => ThemeViewModel(),
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<ThemeViewModel>(
      builder: (context, themeViewModel, child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          home: const HomeView(),
          theme: themeViewModel.themeData,
        );
      },
    );
  }
}
