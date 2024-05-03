import 'package:flutter/material.dart';
class CustomRow extends StatelessWidget {
  String title;
  IconData icons;
    CustomRow({super.key,
  required this.title,
  required this.icons});

  @override
  Widget build(BuildContext context) {
    return     Row(
      children: [
        Icon(icons,color: Colors.blue,),
        SizedBox(width: 5,),
        Text(title,style: TextStyle(
            color: Colors.black,
            fontSize: 14,
            fontWeight: FontWeight.w300
        ),)
      ],
    );
  }
}
