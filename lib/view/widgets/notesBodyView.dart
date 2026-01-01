import 'package:flutter/material.dart';

import 'NotesCustomAppBar.dart';

import 'customNoteListView.dart';

class NotesBodyView extends StatelessWidget {
  const NotesBodyView({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Column(
        children: [
          SizedBox(height: 25),
          CustomAppBar(icon: Icons.search_rounded,title: "Notes",),
          Expanded(child: NotesListView()),
        ],
      ),
    );
  }
}
