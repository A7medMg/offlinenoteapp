import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:noteapp/view/widgets/CustomTextFiled.dart';

import '../../cubits/notes/notes_cubit.dart';
import '../../models/noteModel.dart';
import 'NotesCustomAppBar.dart';
class EditeNoteBody extends StatefulWidget {
  final NoteModel note;
   EditeNoteBody({super.key,required this.note});

  @override
  State<EditeNoteBody> createState() => _EditeNoteBodyState();
}

class _EditeNoteBodyState extends State<EditeNoteBody> {
    String? title,subtitle;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        children: [
          SizedBox(height: 25),
          CustomAppBar(icon: Icons.check,title: "Edite note",onTap: (){
            widget.note.title=title?? widget.note.title;
            widget.note.subtitle=subtitle?? widget.note.subtitle;
            widget.note.save();
            BlocProvider.of<NotesCubit>(context).fetchAllNotes();
            Navigator.pop(context);

          }),
          SizedBox(height: 15,),
          CustomTextFiled(hint: widget.note.title,onChanged: (v){
            title=v;
          },),
          SizedBox(height: 16,),
          CustomTextFiled(hint: widget.note.subtitle,maxlines: 5,onChanged: (s){
            subtitle=s;
          },),


        ],
      ),
    );
  }
}