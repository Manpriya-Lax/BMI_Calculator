import 'package:flutter/material.dart';
import 'package:bmi/constant.dart';


class genderwidget extends StatelessWidget {

  final bool isMale;
  final String text;
  final IconData icon;
  final Function onTap;
  const genderwidget({super.key , required this.isMale, required this.text, required this.icon, required this.onTap});

  @override
  Widget build(BuildContext context) {

   
    return GestureDetector(
    onTap: () => onTap(),
    child: Container(
      decoration: isMale ? kSelectboxdecoration : kboxdecoration,
      padding: EdgeInsets.all(20),
      child:  Column(
        children: [
          Icon(icon, size: 50, color: sTextcolor),
          Text(text, style: TextStyle(fontSize: 20, color: sTextcolor)),
        ],
      ),
    ),
  );
  }
}