import 'package:flutter/material.dart';

import 'CustomSearchIcon.dart';
class CustomAppBar extends StatelessWidget {

   CustomAppBar({super.key, required this.title, required this.icon,required this.onTap});
  final String title;
  final IconData icon;
  void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(title,style: TextStyle(
          fontSize: 28,

        ),),
        Spacer(),
        CustomSearchIcon(icon:icon, onTap:onTap,)
        
      ],
    );
  }
}

