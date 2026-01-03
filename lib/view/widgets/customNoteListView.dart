import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:noteapp/cubits/notes/notes_cubit.dart';

import 'customNoteItem.dart';
class NotesListView extends StatelessWidget {
  const NotesListView({super.key});

  @override
  Widget build(BuildContext context) {
    List<Color> colorsList = [
      Colors.red,
      Colors.redAccent,
      Colors.pink,
      Colors.pinkAccent,
      Colors.purple,
      Colors.purpleAccent,
      Colors.deepPurple,
      Colors.deepPurpleAccent,
      Colors.indigo,
      Colors.indigoAccent,
      Colors.blue,
      Colors.blueAccent,
      Colors.lightBlue,
      Colors.lightBlueAccent,
      Colors.cyan,
      Colors.cyanAccent,
      Colors.teal,
      Colors.tealAccent,
      Colors.green,
      Colors.greenAccent,
      Colors.lightGreen,
      Colors.lightGreenAccent,
      Colors.lime,
      Colors.limeAccent,
      Colors.yellow,
      Colors.yellowAccent,
      Colors.amber,
      Colors.amberAccent,
      Colors.orange,
      Colors.orangeAccent,
      Colors.deepOrange,
      Colors.deepOrangeAccent,
      Colors.brown,
      Colors.grey,
      Colors.blueGrey,
      Colors.black,
      Colors.white,
    ];

    return BlocBuilder<NotesCubit,NotesState>(
      builder: (context, state) => Padding(
        padding: const EdgeInsets.symmetric(vertical: 16.0),
        child: ListView.builder(
          padding: EdgeInsets.zero,
          itemCount: BlocProvider.of<NotesCubit>(context).notes?.length??0,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.symmetric(vertical: 4.0),
              child: CustomNoteItems(note: BlocProvider.of<NotesCubit>(context).notes![index]),
            );
          },
        ),
      ),
    );
  }
}