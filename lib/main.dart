import 'package:flutter/material.dart';
import 'package:get_the_design_alive/view/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home:HomeScreen() ,
     debugShowCheckedModeBanner: false,
    );
  }
}

