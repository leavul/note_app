import 'package:flutter/material.dart';
import 'package:note_app/views/home_view.dart';

void main() {
  runApp(const NoteApp());
}

class NoteApp extends StatelessWidget {
  const NoteApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.dark(
          surface: Colors.grey.shade900,
          primary: Colors.grey.shade600,
          secondary: Colors.grey,
          inversePrimary: Colors.grey.shade300,
        ),
      ),
      home: NotesView(),
    );
  }
}
