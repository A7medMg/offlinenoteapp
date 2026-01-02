import 'package:flutter/material.dart';
class CustomButton extends StatelessWidget {
  void Function()? onTap;
   CustomButton({super.key,this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        alignment: Alignment.center,
        height: 60,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color: Colors.cyan,

        ),
        child: Text("Add",style: TextStyle(fontSize: 28,fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
