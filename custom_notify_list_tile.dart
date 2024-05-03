import 'package:flutter/material.dart';
class CustomNotifyListTile extends StatelessWidget {
  final IconData iconData;
  final String title;

  const CustomNotifyListTile({super.key,
  required this.iconData,
  required this.title});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        width: MediaQuery.sizeOf(context).width*.9,
        height: MediaQuery.sizeOf(context).height*.08,
        decoration: BoxDecoration(
            color: Color(0xffd9d9d9),
            borderRadius: BorderRadius.circular(14)
        ),
        child: ListTile(
          leading: Icon(iconData,
            color: Colors.blue,),
          title: Text(title),
        ),
      ),
    );
  }
}
