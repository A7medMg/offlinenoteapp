import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:noteapp/models/noteModel.dart';

import '../../cubits/notes/notes_cubit.dart';
import 'NotesCustomAppBar.dart';

import 'customNoteListView.dart';

class NotesBodyView extends StatefulWidget {

   NotesBodyView({super.key});

  @override
  State<NotesBodyView> createState() => _NotesBodyViewState();
}

class _NotesBodyViewState extends State<NotesBodyView> {
  @override
  void initState() {
    BlocProvider.of<NotesCubit>(context).fetchAllNotes();
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Column(
        children: [
          SizedBox(height: 25),
          CustomAppBar(icon: Icons.search_rounded,title: "Notes",onTap: (){},),
          Expanded(child: NotesListView()),
        ],
      ),
    );
  }
}
