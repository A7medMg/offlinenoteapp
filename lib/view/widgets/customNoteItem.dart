import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../screens/editNoteView.dart';
class CustomNoteItems extends StatelessWidget {
  //final Color color;
  const CustomNoteItems({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        Navigator.push(context, MaterialPageRoute(builder: (context)=>EditeNoteView()));
      },
      child: Container(
        padding: EdgeInsets.only(top: 24, bottom: 24, left: 16),

        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          color: Colors.yellowAccent,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            ListTile(
              title: Text(
                "Ahmed Magdy",
                style: TextStyle(
                    fontSize: 26,
                    color: Colors.black),
              ),
              subtitle: Padding(
                padding: const EdgeInsets.only(top: 16.0, bottom: 16),
                child: Text(
                  "Do your homework then go to shcool that isok",
                  style: TextStyle(
                      fontSize: 20,
                      color: Colors.black.withOpacity(.5)),
                ),
              ),
              trailing: IconButton(onPressed: (){}, icon:Icon(FontAwesomeIcons.trash,size:26),color: Colors.black,),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 24.0,top: 16),
              child: Text("8May, 2025", style: TextStyle(
                  fontSize: 16,
                  color: Colors.black.withOpacity(.5)),),
            ),
          ],
        ),
      ),
    );
  }
}