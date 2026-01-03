import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:meta/meta.dart';
import 'package:noteapp/models/noteModel.dart';

import '../../constants.dart';

part 'add_note_state.dart';

class AddNoteCubit extends Cubit<AddNoteState> {
  AddNoteCubit() : super(AddNoteInitial());
  Color color=Color(0xffAC3931);
  addNote(NoteModel note)async{

    note.color=color.value;
    emit(AddNoteLoading());
    try{
      var notesBox=Hive.box<NoteModel>(kNoteBox);

     await notesBox.add(note);
      emit(AddNoteSuccess());
    }catch(e){
      emit(AddNoteFailure(errorMessage: e.toString()));
    }

  }
}
