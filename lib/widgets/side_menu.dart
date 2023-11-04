import 'package:flutter/material.dart';
import 'package:flutter_admin_template/utils/constants.dart';
import 'package:flutter_admin_template/widgets/side_menu_tile.dart';

class SideMenu extends StatefulWidget {
  const SideMenu({super.key});

  @override
  State<SideMenu> createState() => _SideMenuState();
}

class _SideMenuState extends State<SideMenu> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          DrawerHeader(
              child: Row(
            children: [
              Stack(
                alignment: Alignment.bottomRight,
                children: [
                  Container(
                    height: 20,
                    width: 50,
                    decoration: BoxDecoration(
                        color: Constants.secondaryBlueColor,
                        borderRadius: BorderRadius.circular(20)),
                  ),
                  Container(
                    height: 30,
                    width: 30,
                    decoration: BoxDecoration(
                        color: Constants.primaryBlueColor,
                        borderRadius: BorderRadius.circular(100)),
                  )
                ],
              ),
              SizedBox(
                width: 10,
              ),
              Text(
                "Cloudways",
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 19),
              )
            ],
          )),
          Padding(
            padding: const EdgeInsets.only(left: 8.0),
            child: Text(
              "MENU",
              style: TextStyle(
                  color: Colors.black,
                  letterSpacing: 0.3,
                  fontWeight: FontWeight.bold,
                  fontSize: 12),
            ),
          ),
          SizedBox(
            height: 15,
          ),
          SideMenuTile(
            icon: Icon(
              Icons.dashboard,
              color: Colors.white,
            ),
            bgColor: Constants.primaryBlueColor,
            title: "Dashboard",
            activeColor: Colors.white,
          ),
          SideMenuTile(
            icon: Icon(
              Icons.bar_chart,
              color: Colors.grey,
            ),
            bgColor: Colors.transparent,
            title: "Statistics",
            activeColor: Colors.grey,
          ),
          SideMenuTile(
            icon: Icon(
              Icons.savings,
              color: Colors.grey,
            ),
            bgColor: Colors.transparent,
            title: "Savings",
            activeColor: Colors.grey,
          ),
          SideMenuTile(
            icon: Icon(
              Icons.account_balance,
              color: Colors.grey,
            ),
            bgColor: Colors.transparent,
            title: "Portfolio",
            activeColor: Colors.grey,
          ),
          SideMenuTile(
            icon: Icon(
              Icons.message,
              color: Colors.grey,
            ),
            bgColor: Colors.transparent,
            title: "Messages",
            activeColor: Colors.grey,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 8.0),
            child: Text(
              "GENERAL",
              style: TextStyle(
                  color: Colors.black,
                  letterSpacing: 0.3,
                  fontWeight: FontWeight.bold,
                  fontSize: 12),
            ),
          ),
          SideMenuTile(
            icon: Icon(
              Icons.settings,
              color: Colors.grey,
            ),
            bgColor: Colors.transparent,
            title: "Settings",
            activeColor: Colors.grey,
          ),
          SideMenuTile(
            icon: Icon(
              Icons.view_agenda,
              color: Colors.grey,
            ),
            bgColor: Colors.transparent,
            title: "Apperance",
            activeColor: Colors.grey,
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: SideMenuTile(
              icon: Icon(
                Icons.logout,
                color: Colors.black,
              ),
              bgColor: Colors.transparent,
              title: "Log Out",
              activeColor: Colors.black,
            ),
          ),
        ],
      ),
    );
  }
}
