import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CreateQuestForm extends StatelessWidget {
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
            Text("Post a quest.",
                style: TextStyle(
                    fontSize: 24,
                    fontFamily: "Kanit-Bold",
                    letterSpacing: .6)),
            SizedBox(
              height: ScreenUtil.getInstance().setHeight(30),
            ),
            Text("Title:",
              style: TextStyle(
                fontFamily: "Kanit-Medium",
                fontSize: 16,
              ),
            ),
            TextField(
              decoration: InputDecoration(
                  hintText: "quest title",
                  hintStyle: TextStyle(color: Colors.grey)),
            ),
            SizedBox(
              height: ScreenUtil.getInstance().setHeight(30),
            ),
            Text("Brief:",
              style: TextStyle(
                fontFamily: "Kanit-Medium",
                fontSize: 16,
              ),
            ),
            TextField(
              decoration: InputDecoration(
                  hintText: "brief summary of quest",
                  hintStyle: TextStyle(color: Colors.grey)),
            ),
            SizedBox(
              height: ScreenUtil.getInstance().setHeight(30),
            ),
            Text("Detail:",
              style: TextStyle(
                fontFamily: "Kanit-Medium",
                fontSize: 16,
              ),
            ),
            TextField(
              maxLines: 8,
              maxLength: 1000,
              decoration: InputDecoration(
                  hintText: "quest detail",
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