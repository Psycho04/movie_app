import 'package:flutter/material.dart';
import 'package:movie_app/feature/home/home_screen.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'M O V I E S',
      home: HomeScreen(),
    );
  }
}