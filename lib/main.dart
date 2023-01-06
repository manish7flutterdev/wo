import 'package:flutter/material.dart';
import 'package:wo/source/screens/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Aimed Labs Assignment',
      theme: ThemeData(primarySwatch: Colors.blue, fontFamily: 'NunitoSans'),
      home: HomePage(),
    );
  }
}
