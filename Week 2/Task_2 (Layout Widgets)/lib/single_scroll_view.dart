import 'package:flutter/material.dart';
import 'package:layout_widgets/layout1.dart';

class SingleScrollView extends StatelessWidget {
  const SingleScrollView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          title: const Text('Single Scroll View'),
          actions: [
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: InkWell(
                child: const Icon(Icons.navigate_next),
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => const Layout1()));
                },
              ),
            )
          ],
        ),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                color: Colors.amber,
                height: 400,
                width: 300,
                child: const Center(
                  child: Text('Mohsin'),
                ),
              ),
              const SizedBox(
                height: 50,
              ),
              Container(
                color: Colors.blue,
                height: 400,
                width: 500,
                child: const Center(
                  child: Text('Behzad'),
                ),
              ),
              const SizedBox(
                height: 60,
              ),
              Container(
                color: Colors.black,
                height: 400,
                width: 300,
                child: const Center(
                  child: Text('Mardan'),
                ),
              )
            ],
          ),
        ));
  }
}
