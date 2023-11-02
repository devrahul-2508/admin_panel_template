import 'package:flutter/material.dart';
import 'package:flutter_admin_template/utils/responsive.dart';

class Header extends StatelessWidget {
  const Header({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        children: [
          if (!Responsive.isDesktop(context))
            IconButton(icon: Icon(Icons.menu), onPressed: () {}),
          if (!Responsive.isMobile(context))
            Text(
              "Dashboard",
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 18,
                  fontWeight: FontWeight.bold),
            ),
          if (!Responsive.isMobile(context))
            Spacer(flex: Responsive.isDesktop(context) ? 2 : 1),
          Expanded(child: SearchField()),
          buildNotifIcon(),
          Expanded(child: ProfileCard())
        ],
      ),
    );
  }
}

class ProfileCard extends StatelessWidget {
  const ProfileCard({
    Key? key,
  }) : super(key: key);

  final defaultPadding = 16.0;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(
        radius: 20,
        backgroundImage: NetworkImage(
          "https://images.pexels.com/photos/220453/pexels-photo-220453.jpeg?cs=srgb&dl=pexels-pixabay-220453.jpg&fm=jpg",
        ),
      ),
      title: Text("John Doe"),
      subtitle: Text("johndoe@gmail.com"),
    );
  }
}

class SearchField extends StatelessWidget {
  const SearchField({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        hintText: "Search here",
        fillColor: Colors.grey.shade200,
        filled: true,
        border: OutlineInputBorder(
          borderSide: BorderSide.none,
          borderRadius: const BorderRadius.all(Radius.circular(20)),
        ),
        prefixIcon: InkWell(
          onTap: () {},
          child: Icon(Icons.search),
        ),
      ),
    );
  }
}

Widget buildNotifIcon() {
  return Stack(
    alignment: Alignment.topRight,
    children: [
      Icon(Icons.notifications),
      CircleAvatar(
        radius: 5,
        backgroundColor: Colors.red,
      )
    ],
  );
}
