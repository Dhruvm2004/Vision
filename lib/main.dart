import 'package:flutter/material.dart';
import 'package:vision/bottom_nav.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
     theme: ThemeData(
      scaffoldBackgroundColor:Colors.white
     ),
      home: const BottomNav(),
    );
  }
}

