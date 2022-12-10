import 'package:flutter/material.dart';
import 'package:flutterenglishapp/profile_page.dart';

import 'main_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Main Page',
      home: Scaffold(
          appBar: AppBar(
            title: const Text('Main Page'),
          ),
          body: MyMainPage()),
    );
  }
}
