import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:noteapp/cubits/addNoteCubit/add_note_cubit.dart';
class CustomButton extends StatelessWidget {
  void Function()? onTap;

   CustomButton({super.key,this.onTap});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AddNoteCubit,AddNoteState>(
      builder: (BuildContext context, state) {
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
            child:state is AddNoteLoading ? SizedBox(
              width: 24,
              height: 24,
              child: CircularProgressIndicator(
                color: Colors.white ,
              ),
            ):Text("Add",style: TextStyle(fontSize: 28,fontWeight: FontWeight.bold),
            ),
          ),
        );
      },

    );
  }
}
