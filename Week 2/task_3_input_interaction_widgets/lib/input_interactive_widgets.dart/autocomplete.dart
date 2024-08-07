// Autocomplete

import 'package:flutter/material.dart';
import 'package:task_3_input_interaction_widgets/input_interactive_widgets.dart/form_field.dart';

class InputWidgets extends StatelessWidget {
  const InputWidgets({super.key});

  static const List<String> listItems = <String>['Peas', 'Potatoe', 'Tomatoe'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text('AutoComplete')),
        backgroundColor: Colors.blue,
        actions: <Widget> [
          GestureDetector(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => InputWidgets2()));
            },
            child: const Padding(
              padding: EdgeInsets.all(8.0),
              child: Icon(Icons.widgets),
              
            ),
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Autocomplete<String>(
          optionsBuilder: (TextEditingValue textEditingValue) {
            if (textEditingValue.text == '') {
              return const Iterable<String>.empty();
            }
            return listItems.where((String item) {
              return item.contains(textEditingValue.text.toLowerCase());
            });
          },
          onSelected: (String item) {
            print('The $item is selected.');
          },
        ),
      ),
    );
  }
}
