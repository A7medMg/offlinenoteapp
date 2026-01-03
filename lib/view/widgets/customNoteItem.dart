import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:intl/intl.dart';
import '../../cubits/notes/notes_cubit.dart';
import '../../models/noteModel.dart';
import '../screens/editNoteView.dart';
class CustomNoteItems extends StatelessWidget {
  final NoteModel note;

   CustomNoteItems({super.key,required this.note});

  @override
  Widget build(BuildContext context) {
    DateTime dateTime = DateTime.parse(note.date);

    return GestureDetector(
      onTap: (){
        Navigator.push(context, MaterialPageRoute(builder: (context)=>EditeNoteView(note: note,)));
      },
      child: Container(
        padding: EdgeInsets.only(top: 24, bottom: 24, left: 16),

        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          color: Color(note.color),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            ListTile(
              title: Text(
                note.title,
                style: TextStyle(
                    fontSize: 26,
                    color: Colors.black),
              ),
              subtitle: Padding(
                padding: const EdgeInsets.only(top: 16.0, bottom: 16),
                child: Text(
                  note.subtitle,
                  style: TextStyle(
                      fontSize: 20,
                      color: Colors.black.withOpacity(.5)),
                ),
              ),
              trailing: IconButton(onPressed: (){
                note.delete();
                BlocProvider.of<NotesCubit>(context).fetchAllNotes();


              }, icon:Icon(FontAwesomeIcons.trash,size:26),color: Colors.black,),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 24.0,top: 16),
              child: Text(DateFormat('dd MMM yyyy, HH:mm').format(dateTime), style: TextStyle(
                  fontSize: 16,
                  color: Colors.black.withOpacity(.5)),),
            ),
          ],
        ),
      ),
    );
  }
}