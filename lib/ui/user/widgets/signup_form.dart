import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SignupForm extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
//      height: ScreenUtil.getInstance().setHeight(500),
      padding: EdgeInsets.only(bottom: 1),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(8.0),
          boxShadow: [
            BoxShadow(
                color: Colors.black12,
                offset: Offset(0.0, 15.0),
                blurRadius: 15.0),
            BoxShadow(
                color: Colors.black12,
                offset: Offset(0.0, -10.0),
                blurRadius: 10.0),
          ]),
      child: Padding(
        padding: EdgeInsets.only(left: 16.0, right: 16.0, top: 16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text("Sign Up to Questster",
                style: TextStyle(
                    fontSize: 24,
                    fontFamily: "Kanit-Bold",
                    letterSpacing: .6)),
            SizedBox(
              height: ScreenUtil.getInstance().setHeight(30),
            ),
            Text("Name",
              style: TextStyle(
                fontFamily: "Kanit-Medium",
                fontSize: 16,
              ),
            ),
            TextField(
              decoration: InputDecoration(
                  hintText: "name",
                  hintStyle: TextStyle(color: Colors.grey)),
            ),
            SizedBox(
              height: ScreenUtil.getInstance().setHeight(30),
            ),
            Text("Surname",
              style: TextStyle(
                fontFamily: "Kanit-Medium",
                fontSize: 16,
              ),
            ),
            TextField(
              decoration: InputDecoration(
                  hintText: "surname",
                  hintStyle: TextStyle(color: Colors.grey)),
            ),
            SizedBox(
              height: ScreenUtil.getInstance().setHeight(30),
            ),
            Text("Email",
              style: TextStyle(
                fontFamily: "Kanit-Medium",
                fontSize: 16,
              ),
            ),
            TextField(
              decoration: InputDecoration(
                  hintText: "email",
                  hintStyle: TextStyle(color: Colors.grey)),
            ),
            SizedBox(
              height: ScreenUtil.getInstance().setHeight(30),
            ),
            Text("Phone Number",
              style: TextStyle(
                fontFamily: "Kanit-Medium",
                fontSize: 16,
              ),
            ),
            TextField(
              decoration: InputDecoration(
                  hintText: "phone number eg. 0987654321",
                  hintStyle: TextStyle(color: Colors.grey)),
            ),
            SizedBox(
              height: ScreenUtil.getInstance().setHeight(30),
            ),
            Text("Username",
              style: TextStyle(
                fontFamily: "Kanit-Medium",
                fontSize: 16,
              ),
            ),
            TextField(
              decoration: InputDecoration(
                  hintText: "username",
                  hintStyle: TextStyle(color: Colors.grey)),
            ),
            SizedBox(
              height: ScreenUtil.getInstance().setHeight(30),
            ),
            Text("Password",
              style: TextStyle(
                fontFamily: "Kanit-Medium",
                fontSize: 16,
              ),
            ),
            TextField(
              obscureText: true,
              decoration: InputDecoration(
                  hintText: "password",
                  hintStyle: TextStyle(color: Colors.grey)),
            ),
            SizedBox(
              height: ScreenUtil.getInstance().setHeight(35),
            ),Text("Confirm Password",
              style: TextStyle(
                fontFamily: "Kanit-Medium",
                fontSize: 16,
              ),
            ),
            TextField(
              obscureText: true,
              decoration: InputDecoration(
                  hintText: "must be the same as password",
                  hintStyle: TextStyle(color: Colors.grey)),
            ),
            SizedBox(
              height: ScreenUtil.getInstance().setHeight(35),
            ),
          ],
        ),
      ),
    );
  }
}