import 'package:flutter/material.dart';
import 'package:webviewDemo/Screens/Login/login_screen.dart';
import 'package:webviewDemo/Screens/Signup/components/body.dart';
import 'package:webviewDemo/Screens/Signup/signup_screen.dart';
import 'package:webviewDemo/activity.dart';
import 'package:webviewDemo/form.dart';
import 'package:webviewDemo/pages/multi_example.dart';
import 'package:webviewDemo/profile.dart';

class DrawerMenu extends StatefulWidget {
  @override
  _DrawerMenuState createState() => _DrawerMenuState();
}

class _DrawerMenuState extends State<DrawerMenu> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(
            decoration: BoxDecoration(
              color: Colors.amber[800],
            ),
            child: Image.asset(
              "assets/images/logo.jpeg",
            ),
          ),
          ListTile(
            title: Text('ข้อมูลลูกค้า'),
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => Profile()));
            },
          ),
          ListTile(
            title: Text('กิจกรรม'),
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => ActivityPage()));
            },
          ),
          ListTile(
            title: Text('Log Out'),
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => LoginScreen()));
            },
          ),
        ],
      ),
    );
  }
}
