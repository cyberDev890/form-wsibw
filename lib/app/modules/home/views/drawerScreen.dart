import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DrawerScreen extends StatefulWidget {
  @override
  State<DrawerScreen> createState() => _DrawerScreenState();
}

class _DrawerScreenState extends State<DrawerScreen> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: <Widget>[
          UserAccountsDrawerHeader(
            decoration: BoxDecoration(
              color: Colors.transparent,
            ),
            accountName: Text("Rayhan Febriansyah",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 17,
                  fontFamily: 'Mulish',
                )),
            currentAccountPicture: CircleAvatar(),
            accountEmail: Text("MAHASISWA",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 17,
                  fontFamily: 'Mulish',
                )),
          ),
          DrawerListTile(
            iconData: Icons.admin_panel_settings,
            title: "Home",
            ontilePressed: () {
              Get.toNamed('/home');
            },
          ),
          DrawerListTile(
            iconData: Icons.admin_panel_settings,
            title: "Register",
            ontilePressed: () {
              Get.toNamed('/register');
            },
          ),
          DrawerListTile(
            iconData: Icons.admin_panel_settings,
            title: "Login",
            ontilePressed: () {
              Get.toNamed('/login');
            },
          ),
          DrawerListTile(
            iconData: Icons.admin_panel_settings,
            title: "Logout",
            ontilePressed: () {
              Get.toNamed('/login');
            },
          ),
        ],
      ),
    );
  }
}

class DrawerListTile extends StatelessWidget {
  final IconData? iconData;
  final String? title;
  final VoidCallback? ontilePressed;

  const DrawerListTile({this.iconData, this.title, this.ontilePressed});
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          onTap: ontilePressed,
          leading: Icon(iconData),
          dense: true,
          title: Text(
            title!,
            style: TextStyle(fontSize: 14, fontFamily: 'Mulish'),
          ),
        ),
        Divider(
          height: 1,
          thickness: 1,
        ),
      ],
    );
  }
}
