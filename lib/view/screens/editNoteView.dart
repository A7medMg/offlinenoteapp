import 'package:flutter/material.dart';

import '../../models/noteModel.dart';
import '../widgets/editeNoteBody.dart';

class EditeNoteView extends StatelessWidget {
  final NoteModel note;
   EditeNoteView({super.key,required this.note});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:EditeNoteBody(note: note,),
    );
  }
}

