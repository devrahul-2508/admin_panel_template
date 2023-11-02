import 'package:flutter/material.dart';

class SideMenuTile extends StatelessWidget {
  SideMenuTile(
      {super.key,
      required this.icon,
      required this.bgColor,
      required this.activeColor,
      required this.title});

  Icon icon;
  Color bgColor;
  Color activeColor;
  String title;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        decoration: BoxDecoration(
            color: bgColor, borderRadius: BorderRadius.circular(10)),
        child: ListTile(
          leading: icon,
          title: Text(
            title,
            style: TextStyle(color: activeColor),
          ),
        ),
      ),
    );
  }
}
