import 'package:flutter/material.dart';
import 'package:flutter_admin_template/utils/constants.dart';
import 'package:flutter_admin_template/widgets/header.dart';

class DashBoardScreen extends StatelessWidget {
  const DashBoardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Constants.bgGreyColor,
      body: SafeArea(
          child: SingleChildScrollView(
        child: Column(
          children: [Header()],
        ),
      )),
    );
  }
}
