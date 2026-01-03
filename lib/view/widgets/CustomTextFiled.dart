import 'package:flutter/material.dart';
class CustomTextFiled extends StatelessWidget {
  final int maxlines;
  final String hint;
  void Function(String?)? onSaved;
  void Function(String)? onChanged;
  CustomTextFiled({super.key,  this.maxlines=1, required this.hint,this.onSaved,this.onChanged});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onChanged:onChanged ,
      onSaved: onSaved,
      validator: (v){
        if(v?.isEmpty ??true){
          return "this field is required";
        }else{
          return null;
        }
      },
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
