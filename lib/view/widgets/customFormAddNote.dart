import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:noteapp/models/noteModel.dart';

import '../../addNoteCubit/add_note_cubit.dart';
import 'CustomTextFiled.dart';
import 'customButton.dart';
class AddNoteFormState extends StatefulWidget {
  const AddNoteFormState({super.key});

  @override
  State<AddNoteFormState> createState() => _AddNoteFormStateState();
}

class _AddNoteFormStateState extends State<AddNoteFormState> {
  GlobalKey<FormState>formKey=GlobalKey();
  AutovalidateMode autovalidateMode=AutovalidateMode.disabled;
  String ? title,subtitle;
  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      autovalidateMode: autovalidateMode,
      child: Column(
        children: [
          SizedBox(height: 32,),
          CustomTextFiled(hint: 'Title',onSaved: (value){
            title=value;
          },),
          SizedBox(height: 37,),
          CustomTextFiled(hint: 'description',maxlines: 5,onSaved: (va){
            subtitle=va;
          },),
          SizedBox(height: 30,),

          CustomButton(onTap: (){
            if(formKey.currentState!.validate()){
              formKey.currentState!.save();
              var notModel=NoteModel(title: title!, subtitle: subtitle!, date: DateTime.now().toString(), color: Colors.cyan.value);
              BlocProvider.of<AddNoteCubit>(context).addNote(notModel);

            }else{
              autovalidateMode=AutovalidateMode.always;
              setState(() {

              });
            }
          },),
          SizedBox(height: 15,),
        ],
      ),
    );
  }
}