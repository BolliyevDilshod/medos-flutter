import 'package:flutter/material.dart';
import 'package:medos/screens_pages/home.dart';
import 'package:medos/screens_pages/map_page.dart';
import 'screens_pages/save_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(),
      home: HomePage(),
    );
  }
}
