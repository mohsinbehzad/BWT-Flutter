import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:social_media_app/auth/login_or_signup.dart';
import 'package:social_media_app/components/drawer.dart';
import 'package:social_media_app/components/vibes_connect_post.dart';
import 'package:social_media_app/components/text_field.dart';
import 'package:social_media_app/helper/helper_methods.dart';
import 'package:social_media_app/view/login_screen.dart';
import 'package:social_media_app/view/profile_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  //user
  final currentUser = FirebaseAuth.instance.currentUser!;
  final textController = TextEditingController();

  // sign out
  void signOut() async {
    await FirebaseAuth.instance.signOut();
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(
        builder: (context) => const LoginOrSignup(),
      ),
    );
  }

  // post message
  void postMessage() {
    // only post if there is something in the TextField
    if (textController.text.isNotEmpty) {
      FirebaseFirestore.instance.collection('User Posts').add({
        'User Email': currentUser.email,
        'Message': textController.text,
        'TimeStamp': Timestamp.now(),
        'Likes ': [],
      });
    }

    //clear the textfield
    setState(() {
      textController.clear();
    });
  }

  // navigate to profile page
  void goToProfileScreen() {
    // pop menu drawer
    Navigator.pop(context);
    // go to ptofile page
    Navigator.push(context,
        MaterialPageRoute(builder: (context) => const ProfileScreen()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.surface,
      appBar: AppBar(
        title: const Text('Vibes Connect App'),
      ),
      drawer: MyDrawer(onprofileTap: goToProfileScreen, onSignOut: signOut),
      body: Center(
        child: Column(
          children: [
            // the VibesConnect
            Expanded(
                child: StreamBuilder(
                    stream: FirebaseFirestore.instance
                        .collection('User Posts')
                        .orderBy('TimeStamp', descending: false)
                        .snapshots(),
                    builder: (context, snapshot) {
                      if (snapshot.hasData) {
                        return ListView.builder(
                            itemCount: snapshot.data!.docs.length,
                            itemBuilder: (context, index) {
                              // get the message
                              final postRaw = snapshot.data!.docs[index];
                              final post = postRaw.data();
                              return VibesConnectPost(
                                message: post['Message'],
                                user: post['User Email'],
                                postId: postRaw.id,
                                likes: List<String>.from(post["Likes"] ?? []),
                                time: formatDate(post['TimeStamp']),
                              );
                            });
                      } else if (snapshot.hasError) {
                        return Center(
                          child: Text('Error: ${snapshot.error}'),
                        );
                      }
                      return const Center(
                        child: CircularProgressIndicator(),
                      );
                    })),

            // post message
            Padding(
              padding: const EdgeInsets.all(25),
              child: Row(
                children: [
                  Expanded(
                      child: MyTextField(
                          controller: textController,
                          hintText: 'Write something',
                          obscureText: false)),
                  IconButton(
                      onPressed: postMessage,
                      icon: const Icon(Icons.arrow_circle_up))
                ],
              ),
            ),

            // logged in as
            Text(
              'Logged in as: ${currentUser.email!}',
              style: const TextStyle(color: Colors.grey),
            ),
            const SizedBox(
              height: 50,
            )
          ],
        ),
      ),
    );
  }
}
