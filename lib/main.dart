import 'package:flutter/material.dart';
import 'package:flutterenglishapp/views/favorites.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Ankara English App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData.light(),
      home: const Favorites(),
    );
  }
}
