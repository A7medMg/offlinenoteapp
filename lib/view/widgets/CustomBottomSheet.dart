import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';
import 'package:noteapp/addNoteCubit/add_note_cubit.dart';

import 'CustomTextFiled.dart';
import 'customButton.dart';
import 'customFormAddNote.dart';

class AddNoteModelSheet extends StatelessWidget {
  const AddNoteModelSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: BlocConsumer<AddNoteCubit, AddNoteState>(
        listener: (context, state) {
          if(state is AddNoteFailure){
            print("failure ${state.errorMessage}");
      
          }
          if (state is AddNoteSuccess){
            Navigator.pop(context);
          }
      
        },
        builder: (context, state) {
          return ModalProgressHUD(
              inAsyncCall: state is AddNoteLoading ?true :false,
              child: SingleChildScrollView(child: AddNoteFormState()));
        },
      ),
    );
  }
}

