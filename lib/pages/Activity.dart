import 'package:flutter/material.dart';
import 'package:webviewDemo/pages/Staff.dart';
import 'package:webviewDemo/pages/multi_example.dart';

class ActivityPage extends StatefulWidget {
  @override
  _ActivityPageState createState() => _ActivityPageState();
}

class _ActivityPageState extends State<ActivityPage> {
  int _selectedChoice;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("เลือกกิจกรรม"),
      ),
      body: Padding(
        padding: EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 10,
            ),
            Text(
              "กิจกรรม",
              style: new TextStyle(fontSize: 20),
            ),
            SizedBox(
              height: 20,
            ),
            Expanded(
                child: ListView(
              children: [
                ListTile(
                  title: Text("1"),
                  leading: Radio(
                    value: 1,
                    groupValue: _selectedChoice,
                    onChanged: (int value) {
                      setState(() {
                        _selectedChoice = value;
                      });
                    },
                  ),
                ),
                ListTile(
                  title: Text("2"),
                  leading: Radio(
                    value: 2,
                    groupValue: _selectedChoice,
                    onChanged: (int value) {
                      setState(() {
                        _selectedChoice = value;
                      });
                    },
                  ),
                ),
                ListTile(
                  title: Text("3"),
                  leading: Radio(
                    value: 3,
                    groupValue: _selectedChoice,
                    onChanged: (int value) {
                      setState(() {
                        _selectedChoice = value;
                      });
                    },
                  ),
                ),
                ListTile(
                  title: Text("4"),
                  leading: Radio(
                    value: 4,
                    groupValue: _selectedChoice,
                    onChanged: (int value) {
                      setState(() {
                        _selectedChoice = value;
                      });
                    },
                  ),
                ),
              ],
            ))
          ],
        ),
      ),
      bottomNavigationBar: Padding(
        padding: EdgeInsets.all(10),
        child: RaisedButton(
          onPressed: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => StaffPage()));
          },
          color: Colors.red[400],
          textColor: Colors.white,
          child: Text("ยืนยันการจอง"),
        ),
      ),
    );
  }
}
