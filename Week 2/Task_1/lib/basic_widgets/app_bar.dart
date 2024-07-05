// app bar is used on top or bottom, both have different implementation.
// 3 components of app bar are leading, title and actions.

import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amber,

        toolbarHeight: 150,
        toolbarOpacity: 0.5,                                                      //value should be 0 to 1,and it is not applied to appbar. it works on elements of Appbar like title etc

        elevation: 25,                                                      //shadow below appbar
        shadowColor: Colors.red,

        leading: const Icon(Icons.menu),
        leadingWidth: 300,

        title: const Text('AppBar'),
        titleTextStyle: const TextStyle(
          color: Colors.deepPurpleAccent,
          fontSize: 28,
        ),

        // title: Container(
        //   width: 50,
        //   child: Image.network('https://pixabay.com/photos/tree-sunset-clouds-sky-silhouette-736885/'),
        // ),
        centerTitle: true,
        

        actions: const [
          Icon(Icons.more_vert),
          Icon(Icons.search),
          Icon(Icons.pages),
        ],
        actionsIconTheme: const IconThemeData(color: Colors.amber, size: 26),
      ),
      
      drawer: Drawer(),
    );
  }
}
