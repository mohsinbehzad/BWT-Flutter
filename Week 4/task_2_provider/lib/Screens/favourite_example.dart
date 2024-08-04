import 'dart:js_interop';
import 'package:provider/provider.dart';
import 'package:flutter/material.dart';
import 'package:task_2_provider/provider/favourite_provider.dart';

class FavouriteExample extends StatefulWidget {
  const FavouriteExample({super.key});

  @override
  State<FavouriteExample> createState() => _FavouriteExampleState();
}

class _FavouriteExampleState extends State<FavouriteExample> {
  // List<int> selectedIndex = [];
  @override
  Widget build(BuildContext context) {
    // final favouriteProvider = Provider.of<FavouriteProvider>(context, listen: false);
    // the above commented line is of no use when you use Consumer, 
    // because instead of favouriteProvider.something, you can use value.something as shown below.
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
                itemBuilder: (context, index) {
                  return Consumer<FavouriteProvider>(builder: (builder, value, child) {
                    return ListTile(
                      title: Text('Item $index'),
                      onTap: () {
                        if (value.selectedItem.contains(index)) {
                          value.removeItem(index);
                        } else {
                          value.addItem(index);
                        }
                      },
                      trailing: Icon(
                          value.selectedItem.contains(index) ? Icons.favorite : Icons.favorite_border_outlined),
                    );
                  });
                }),
          )
        ],
      ),
    );
  }
}
