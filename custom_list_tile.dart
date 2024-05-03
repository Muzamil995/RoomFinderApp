import 'package:flutter/material.dart';
class CustomListTile extends StatelessWidget {
  final IconData iconData;
  final String text;
  final String ? subtext;
    const CustomListTile({super.key,
    required this.iconData,
    required this.text,
    this.subtext});

  @override
  Widget build(BuildContext context) {
    return    Padding(
      padding: EdgeInsets.only(left: 40),
      child: ListTile(
        leading: Icon(iconData,
        color: Colors.blue,),
        title: Text(text,
          style: const TextStyle(
            color: Colors.black,
            fontSize: 16,

          ),),
      ),
    ) ;
  }
}
