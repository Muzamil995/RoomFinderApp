import 'package:flutter/material.dart';
class CustomTextButton extends StatefulWidget {
  String name;
  Function? onpressed;
    CustomTextButton({super.key, required this.name,
      required this.onpressed });

  @override
  State<CustomTextButton> createState() => _CustomTextButtonState();
}

class _CustomTextButtonState extends State<CustomTextButton> {
  @override
  Widget build(BuildContext context) {
    return    TextButton(onPressed: ( ){},
    style: ButtonStyle(
    backgroundColor: MaterialStateProperty.all(Color(0xffd9d9d9)),
    shadowColor: MaterialStateProperty.all(Color(0xffd9d9d9))
    ), child: Text(widget.name));
  }
}
