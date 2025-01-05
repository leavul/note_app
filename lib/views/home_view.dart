import 'package:flutter/material.dart';
import 'package:note_app/models/note_model.dart';
import 'package:note_app/utils/note_card.dart';

class NotesView extends StatelessWidget {
  NotesView({super.key});

  final List<NoteModel> notes = [
    NoteModel(
      title: 'Flutter tips',
      content: 'Build you Career with Flutter',
      date: DateTime(2021, 5, 20),
    ),
    NoteModel(
      title: 'Dart tips',
      content: 'Dart is a powerful language',
      date: DateTime(2021, 5, 21),
    ),
    NoteModel(
      title: 'Flutter tips',
      content: 'Build you Career with Flutter',
      date: DateTime(2021, 5, 20),
    ),
    NoteModel(
      title: 'Dart tips',
      content: 'Dart is a powerful language',
      date: DateTime(2021, 5, 21),
    ),
    NoteModel(
      title: 'Flutter tips',
      content: 'Build you Career with Flutter',
      date: DateTime(2021, 5, 20),
    ),
    NoteModel(
      title: 'Dart tips',
      content: 'Dart is a powerful language',
      date: DateTime(2021, 5, 21),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        elevation: 0,
        scrolledUnderElevation: 0.0,
        title: const Text('Notine'),
      ),
      body: ListView.builder(
        itemCount: notes.length,
        itemBuilder: (context, index) {
          return NoteCard(note: notes[index]);
        },
      ),
    );
  }
}
