import 'package:flutter/material.dart';
import 'package:flutter_admin_template/utils/constants.dart';

class Savings extends StatelessWidget {
  const Savings({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: 300,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: Constants.cardbgColor),
        child: Column(children: [Text("Statistics")]),
      ),
    );
  }
}
