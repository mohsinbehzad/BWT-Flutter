import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class UserProfileScreen extends StatefulWidget {
  const UserProfileScreen({super.key});

  @override
  State<UserProfileScreen> createState() => _UserProfileScreenState();
}

class _UserProfileScreenState extends State<UserProfileScreen> {
  String _name = '';
  String _email = '';
  String _gender = '';

  @override
  void initState() {
    super.initState();
    _loadUserData();
  }

  Future<void> _loadUserData() async {
    final prefs = await SharedPreferences.getInstance();
    setState(() {
      _name = prefs.getString('name') ?? 'N/A';
      _email = prefs.getString('email') ?? 'N/A';
      _gender = prefs.getString('gender') ?? 'N/A';
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('User Profile'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text('Name: $_name', style: const TextStyle(fontSize: 18)),
            const SizedBox(height: 10),
            Text('Email: $_email', style: const TextStyle(fontSize: 18)),
            const SizedBox(height: 10),
            Text('Gender: $_gender', style: const TextStyle(fontSize: 18)),
          ],
        ),
      ),
    );
  }
}