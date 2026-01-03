import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../cubits/addNoteCubit/add_note_cubit.dart';

class ColorItem extends StatelessWidget {
final bool isSelected;
final Color color;
   ColorItem({super.key, required this.isSelected,required this.color});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 8.0),
      child: isSelected? CircleAvatar(
        radius: 30,

        backgroundColor: Colors.white,
        child: CircleAvatar(
          radius: 28,
          backgroundColor: color,
        ),
      ) :CircleAvatar(
        radius: 28,
        backgroundColor: color,
      ),
    );
  }
}
class ColorListView extends StatefulWidget {
  const ColorListView({super.key});

  @override
  State<ColorListView> createState() => _ColorListViewState();
}

class _ColorListViewState extends State<ColorListView> {
  @override
  int selectedIndex=0;
  List<Color> colorsList = [
    Color(0xffAC3931),
    Color(0xffF58231),
    Color(0xffFADB14),
    Color(0xff7ED321),
    Color(0xff48C9B0),
    Color(0xff14E0DC),
    Color(0xff229954),
  ];
  Widget build(BuildContext context) {

    return SizedBox(
      height: 30*2,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: colorsList.length,
          itemBuilder: (context,index)=>GestureDetector(
            onTap: (){

              setState(() {
                selectedIndex=index;
                BlocProvider.of<AddNoteCubit>(context).color=colorsList[index];
              });
            },
            child: ColorItem(
              color: colorsList[index],
              isSelected: selectedIndex==index,
            ),
          )),
    );
  }
}