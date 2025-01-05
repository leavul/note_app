import 'package:flutter/material.dart';
import 'package:note_app/themes/dart_mode.dart';
import 'package:note_app/pages/home_page.dart';

void main() {
  runApp(const NoteApp());
}

class NoteApp extends StatelessWidget {
  const NoteApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: darkMode,
      home: const HomePage(),
    );
  }
}
