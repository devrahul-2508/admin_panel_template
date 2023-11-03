import 'package:flutter/material.dart';
import 'package:flutter_admin_template/controller/drawer_controller.dart' as dw;
import 'package:flutter_admin_template/screens/dashboard_screen.dart';
import 'package:flutter_admin_template/utils/responsive.dart';
import 'package:flutter_admin_template/widgets/side_menu.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: dw.DrawerController.scaffoldKey ,
      drawer: SideMenu(),
      body: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          if (Responsive.isDesktop(context)) Expanded(child: SideMenu()),
          Expanded(
            // It takes 5/6 part of the screen
            flex: 5,
            child: DashBoardScreen(),
          ),
        ],
      ),
    );
  }
}
