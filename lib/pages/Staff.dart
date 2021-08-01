import 'package:flutter/material.dart';
import 'package:webviewDemo/components/rounded_button.dart';
import 'package:webviewDemo/drawer_menu.dart';
import 'package:webviewDemo/pages/multi_example.dart';

class StaffPage extends StatefulWidget {
  @override
  _StaffPageState createState() => _StaffPageState();
}

class _StaffPageState extends State<StaffPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("data"),
        ),
        drawer: DrawerMenu(),
        body: Center(
          child: Column(
            children: [
              SizedBox(
                height: 20,
              ),
              (Text(
                "ตารางช่าง",
                style: new TextStyle(fontSize: 25.0),
              )),
              SizedBox(
                height: 20,
              ),
              Image.asset(
                "assets/images/logo.jpeg",
                width: 200,
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: EdgeInsets.only(left: 0.0, right: 0.0),
                child: RaisedButton(
                  textColor: Colors.white,
                  color: Colors.red[400],
                  child: Text(
                    "ช่างเปรี้ยว",
                    style: TextStyle(fontSize: 20),
                  ),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => StartPage()));
                  },
                  shape: new RoundedRectangleBorder(
                    borderRadius: new BorderRadius.circular(10.0),
                  ),
                ),
              )
            ],
          ),
        ));
  }
}
