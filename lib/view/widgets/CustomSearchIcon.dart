import 'package:flutter/material.dart';
class CustomSearchIcon extends StatelessWidget {
  final IconData icon;
  void Function()? onTap;
   CustomSearchIcon({super.key, required this.icon,required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 47,
      height: 47,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        color: Colors.white.withOpacity(.05),
      ),
      child: GestureDetector(
        onTap: onTap,
        child: Center(
          child: Icon(icon,size: 28,),

        ),
      ),
    );
  }
}