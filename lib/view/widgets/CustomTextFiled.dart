import 'package:flutter/material.dart';
class CustomTextFiled extends StatelessWidget {
  final int maxlines;
  final String hint;
  const CustomTextFiled({super.key,  this.maxlines=1, required this.hint});

  @override
  Widget build(BuildContext context) {
    return TextField(
      maxLines: maxlines,
      cursorColor: Colors.cyan,
      decoration: InputDecoration(
        hintText: hint,
        enabledBorder: buildBorder(),

        focusedBorder: buildBorder(Colors.cyan),
        border: buildBorder(),
      ),

    );
  }
  OutlineInputBorder buildBorder([Color ?color]){
    return OutlineInputBorder(
      
        borderRadius: BorderRadius.circular(8),
        borderSide: BorderSide(color: color?? Colors.white)

    );
  }
}
