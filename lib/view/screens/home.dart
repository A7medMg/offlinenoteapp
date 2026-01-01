import 'package:flutter/material.dart';
import 'package:noteapp/view/widgets/CustomBottomSheet.dart';
import 'package:noteapp/view/widgets/notesBodyView.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen ({super.key});
  static String id="home";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        onPressed: (){
          showModalBottomSheet(
            backgroundColor: Colors.grey.shade700,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(16),
                  topRight: Radius.circular(16),)

              ),
              context: context, builder: (BuildContext context) {
            return AddNoteModelSheet();
          });
        },
        backgroundColor: Colors.cyan,
        child: Icon(Icons.add),
      ),
      body: NotesBodyView(),

    );
  }
}

