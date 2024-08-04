import 'dart:js_interop';

import 'package:flutter/material.dart';

class FavouriteExample extends StatefulWidget {
  const FavouriteExample({super.key});

  @override
  State<FavouriteExample> createState() => _FavouriteExampleState();
}

class _FavouriteExampleState extends State<FavouriteExample> {
  List<int> selectedIndex = [];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text('Favourite')),
        backgroundColor: Colors.blue,
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: 100,
              itemBuilder: (context, index){
              return ListTile(
                
                title: Text('Item $index'),
                onTap: () {
                  selectedIndex.add(index);
                  setState(() {
                    
                  });
                },
                trailing: Icon(selectedIndex.contains(index) ? Icons.favorite : Icons.favorite_border_outlined),
              );
            }),
          )
          
        ],
      ),
    );
  }
}