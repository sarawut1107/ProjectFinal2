import 'package:flutter/material.dart';
import 'package:webviewDemo/Screens/Login/login_screen.dart';
import 'package:webviewDemo/Screens/Signup/components/background.dart';
import 'package:webviewDemo/components/rounded_button.dart';
import 'package:webviewDemo/components/rounded_input_field.dart';
import 'package:webviewDemo/components/rounded_password_field.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Background(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              "ลงทะเบียน",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
            ),
            SizedBox(height: size.height * 0.03),
            // Image.asset(
            //   "assets/images/logo.jpeg",
            //   height: size.height * 0.35,
            // ),
            RoundedInputField(
              hintText: "ชื่อ - สกุล",
              onChanged: (value) {},
            ),
            RoundedInputField(
              hintText: "ชื่อผู้ใช้",
              onChanged: (value) {},
            ),
            RoundedPasswordField(
              onChanged: (value) {},
            ),
            RoundedInputField(
              hintText: "ที่อยู๋",
              onChanged: (value) {},
            ),
            RoundedInputField(
              hintText: "เบอร์",
              onChanged: (value) {},
            ),
            RoundedInputField(
              hintText: "เพศ",
              onChanged: (value) {},
            ),
            RoundedInputField(
              hintText: "Facebook",
              onChanged: (value) {},
            ),
            RoundedButton(
              text: "SIGNUP",
              press: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => LoginScreen()));
              },
            ),
          ],
        ),
      ),
    );
  }
}
