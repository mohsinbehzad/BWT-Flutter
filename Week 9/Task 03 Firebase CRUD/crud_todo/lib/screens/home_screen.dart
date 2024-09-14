import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:crud_todo/services/firestore.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  //firestore
  final FirestoreService firestoreService = FirestoreService();
  //text controller
  final TextEditingController textController = TextEditingController();

  // open a dialog box to add a note
  void openNoteBox(String? docId) {
    showDialog(
        context: context,
        builder: (context) => AlertDialog(
              content: TextField(
                controller: textController,
              ),
              actions: [
                // button to save
                ElevatedButton(
                  onPressed: () {
                    // add a new note
                    if (docId == null) {
                      firestoreService.addNote(textController.text);
                    }
                    // update an existing note
                    else {
                      firestoreService.updateNote(docId, textController.text);
                    }

                    textController.clear();

                    Navigator.pop(context);
                  },
                  child: const Text('Add'),
                )
              ],
            ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Notes'),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(Icons.add),
      ),
      body: StreamBuilder<QuerySnapshot>(
        stream: firestoreService.getNotesStream(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            // if we have data, get all the docs
            List notesList = snapshot.data!.docs;

            // display as a list
            return ListView.builder(
                itemCount: notesList.length,
                itemBuilder: (context, index) {
                  // get each individual doc
                  DocumentSnapshot document = notesList[index];
                  String docId = document.id;

                  // get note from each doc
                  Map<String, dynamic> data =
                      document.data() as Map<String, dynamic>;
                  String noteText = data['note'];

                  //display as List tile
                  return ListTile(
                    title: Text(noteText),
                    trailing: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        // update button
                        IconButton(
                          onPressed: () => openNoteBox(docId),
                          icon: const Icon(Icons.settings),
                        ),

                        // delete button
                        IconButton(
                          onPressed: () => firestoreService.deleteNote(docId),
                          icon: const Icon(Icons.delete),
                        ),
                      ],
                    ),
                  );
                });
          }
          // if there is no data return nothing
          else {
            return const Text('No notes');
          }
        },
      ),
    );
  }
}
