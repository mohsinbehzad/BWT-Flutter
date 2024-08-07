import 'package:flutter/material.dart';
import 'package:task_3_input_interaction_widgets/input_interactive_widgets.dart/absorb_pointer.dart';

final _formKey = GlobalKey<FormState>();

class InputWidgets2 extends StatelessWidget {
  const InputWidgets2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Form and Form Fields'),
        backgroundColor: Colors.blue, 
        actions: [
          InkWell(
              child: const Icon(Icons.widgets_outlined),
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => const InteractiveWidgets()));
              },
          ),
        ],

      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Form(
            key: _formKey,
            child: Column(
              children: [
                TextFormField(
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Enter Something';
                    }
                    return null;
                  },
                ),
                ElevatedButton(
                    onPressed: () {
                      if (_formKey.currentState!.validate()) {
                        ScaffoldMessenger.of(context)
                            .showSnackBar(const SnackBar(
                          content: Text('Great'),
                        ));
                      }
                    },
                    child: const Text('Validate'))
              ],
            )),
      ),
    );
  }
}

// Form: The Form widget acts as a container for grouping multiple FormField widgets. It helps in managing the state of the entire form, including validation and saving the form data.
// FormField: Represents an individual form field and provides the base functionality for custom form fields. (e.g., custom widgets that are not TextFormField or DropdownButtonFormField).,