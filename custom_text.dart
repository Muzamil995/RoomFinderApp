import 'package:flutter/material.dart';
class CustomText extends StatelessWidget {
  String data;
    CustomText({super.key,
  required this.data});

  @override
  Widget build(BuildContext context) {
    return    Text(data,
      style: TextStyle(color: Colors.black,
          fontSize: 14),);
  }
}
