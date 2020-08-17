import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MainAppBar extends StatelessWidget {
  final String title;
  MainAppBar({this.title});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Image.asset(
          "assets/logo_w1.png",
          width: ScreenUtil.getInstance().setWidth(100),
          height: ScreenUtil.getInstance().setHeight(100),
        ),
        Container(width: 10,),
        Text(
          title != null ? title:'Questster',
          style: TextStyle(
            color: Colors.white,
            fontFamily: "Kanit-Bold",
            fontSize: 24,
            letterSpacing: .6,
          ),
        ),
      ],
    );
  }
}
