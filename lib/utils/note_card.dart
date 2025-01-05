import 'package:flutter/material.dart';
import 'package:note_app/constants.dart';
import 'dart:math';
import 'package:note_app/models/note_model.dart';

class NoteCard extends StatelessWidget {
  final NoteModel note;
  const NoteCard({super.key, required this.note});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(kMargin),
      padding: const EdgeInsets.all(kPadding),
      decoration: BoxDecoration(
        color: kCardColors[Random().nextInt(kCardColors.length)],
        borderRadius: BorderRadius.circular(kBorderRadius),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                note.title,
                style: TextStyle(
                  color: Theme.of(context).colorScheme.surface,
                  fontSize: 25,
                ),
              ),
              IconButton(
                onPressed: () {},
                highlightColor: Theme.of(context)
                    .colorScheme
                    .surface
                    .withValues(alpha: 0.1),
                icon: Icon(
                  Icons.delete,
                  color: Theme.of(context).colorScheme.surface,
                ),
              ),
            ],
          ),
          const SizedBox(height: kTitleFontSize),
          Text(
            note.content,
            style: TextStyle(
              color: Theme.of(context).colorScheme.primary,
              fontSize: kContentFontSize,
            ),
          ),
          Align(
            alignment: Alignment.centerRight,
            child: Text(
              note.date.toString(),
              style: TextStyle(
                color: Theme.of(context).colorScheme.primary,
                fontSize: kDateFontSize,
              ),
            ),
          )
        ],
      ),
    );
  }
}
