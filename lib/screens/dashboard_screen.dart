import 'package:flutter/material.dart';
import 'package:flutter_admin_template/utils/constants.dart';
import 'package:flutter_admin_template/utils/responsive.dart';
import 'package:flutter_admin_template/widgets/header.dart';
import 'package:flutter_admin_template/widgets/overview.dart';
import 'package:flutter_admin_template/widgets/savings.dart';
import 'package:flutter_admin_template/widgets/statistics.dart';
import 'package:flutter_admin_template/widgets/transactions.dart';

class DashBoardScreen extends StatelessWidget {
  const DashBoardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Constants.bgGreyColor,
      body: SafeArea(
          child: SingleChildScrollView(
        child: Column(
          children: [
            Header(),
            SizedBox(
              height: 16,
            ),
            OverView(),
            SizedBox(
              height: 16,
            ),
            if (Responsive.isDesktop(context))
              Row(
                children: [
                  Expanded(flex: 3, child: Statistics()),
                  Expanded(
                    flex: 2,
                    child: Savings(),
                  )
                ],
              ),
            if (!Responsive.isDesktop(context)) Statistics(),
            if (!Responsive.isDesktop(context)) Savings(),
            Transaction()
          ],
        ),
      )),
    );
  }
}
