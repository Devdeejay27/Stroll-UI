import 'package:flutter/material.dart';
import 'package:stroll/screens/stroll_ui_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Stroll UI',
      theme: ThemeData.dark(),
      home: const StrollUiScreen(),
    );
  }
}
