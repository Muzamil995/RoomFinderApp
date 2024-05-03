import 'package:flutter/material.dart';
class CustomQaA extends StatelessWidget {
  String text;
  String subText;

    CustomQaA({super.key,
  required this.text,
  required this.subText});

  @override
  Widget build(BuildContext context) {
    return      Container(
      width: double.infinity,
      height: 80,
      decoration: BoxDecoration(
          color: Color(0xffd9d9d9),
          borderRadius: BorderRadius.circular(10)
      ),
      child:ListTile(

        leading: Icon(Icons.find_in_page,
          color: Colors.blue,
          size: 30,),
        title: Text(text,
          style: TextStyle(
              color: Colors.black,
              fontSize: 18,
              fontWeight: FontWeight.w500
          ),),
        subtitle: Text( subText,
          style: TextStyle(fontSize: 12,
              color: Colors.black),),
      ) ,
    );
  }
}
