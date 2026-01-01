import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:noteapp/view/widgets/CustomTextFiled.dart';

import 'NotesCustomAppBar.dart';
class EditeNoteBody extends StatelessWidget {
  const EditeNoteBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        children: [
          SizedBox(height: 25),
          CustomAppBar(icon: Icons.check,title: "Edite note",),
          SizedBox(height: 15,),
          CustomTextFiled(hint: "title"),
          SizedBox(height: 16,),
          CustomTextFiled(hint: "description",maxlines: 5,),


        ],
      ),
    );
  }
}