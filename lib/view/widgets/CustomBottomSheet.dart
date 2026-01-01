import 'package:flutter/material.dart';

import 'CustomTextFiled.dart';
import 'customButton.dart';
class AddNoteModelSheet extends StatelessWidget {
  const AddNoteModelSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 32,),
            CustomTextFiled(hint: 'Title',),
            SizedBox(height: 37,),
            CustomTextFiled(hint: 'description',maxlines: 5,),
            SizedBox(height: 30,),
        
            CustomButton(),
            SizedBox(height: 15,),
          ],
        ),
      ),
    );
  }
}
