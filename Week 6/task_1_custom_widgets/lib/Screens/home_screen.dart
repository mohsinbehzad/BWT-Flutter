import 'package:flutter/material.dart';
import 'package:task_1_custom_widgets/Custom%20Widgets/rounded_button.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          title: const Center(
            child: Text('Custom Widgets', style: TextStyle(color: Colors.white, fontWeight: FontWeight.w300, fontSize: 30),),
          ),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 60,
                width: 150,
                child: RoundedButton(
                  buttonName: 'Play',
                  textStyle: const TextStyle(fontSize: 20),
                  icon: const Icon(
                    Icons.play_arrow,
                    size: 30,
                  ),
                  callBack: () {
                    print('Loading...');
                  },
                ),
              ),
              const SizedBox(
                height: 11,
              ),
              SizedBox(
                height: 60,
                width: 150,
                child: RoundedButton(
                  buttonName: 'Quit',
                  textStyle: const TextStyle(fontSize: 20),
                  icon: const Icon(
                    Icons.close,
                    size: 30,
                  ),
                  bgColor: Colors.green,
                  callBack: () {
                    print('turning off...');
                  },
                ),
              ),
            ],
          ),
        ));
  }
}
