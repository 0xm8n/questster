import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:questster/ui/widgets/menu.dart';
import 'package:questster/ui/widgets/app_bar.dart';
import 'package:questster/ui/widgets/pri_button.dart';

class SignupPage extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    ScreenUtil.instance = ScreenUtil.getInstance()..init(context);
    ScreenUtil.instance =
        ScreenUtil(width: 720, height: 1280, allowFontScaling: true);

    return Scaffold(
      backgroundColor: Colors.white,
      resizeToAvoidBottomPadding: true,
      appBar: AppBar(
        iconTheme: new IconThemeData(color: Colors.white),
        title: MainAppBar(title: "Questster"),
      ),
      drawer: MenuDrawer(),
      body: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: <Widget>[
              Padding(
                padding: EdgeInsets.only(top: 0.0),
                child: Image.asset("assets/jobs_s2.jpg"),
              ),
              Expanded(
                child: Container(),
              ),
              Expanded(
                child: Image.asset("assets/image_02.png"),
              ),
            ],
          ),
          SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.only(left: 28.0, right: 28.0, top: 20.0),
              child: Column(
                children: <Widget>[
                  SizedBox(
                    height: ScreenUtil.getInstance().setHeight(120),
                  ),
                  Container(
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
                      padding:
                          EdgeInsets.only(left: 16.0, right: 16.0, top: 16.0),
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
                          Text(
                            "Name",
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
                          Text(
                            "Surname",
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
                          Text(
                            "Email",
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
                          Text(
                            "Phone Number",
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
                          Text(
                            "Username",
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
                          Text(
                            "Password",
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
                          ),
                          Text(
                            "Confirm Password",
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
                  ),
                  SizedBox(
                    height: ScreenUtil.getInstance().setHeight(40),
                  ),
                  Container(
                    alignment: Alignment.centerRight,
                    height: ScreenUtil.getInstance().setHeight(70),
                    child: RaisedButton(
                      onPressed: () => Navigator.pushNamed(context, '/login'),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30.0),
                      ),
                      padding: EdgeInsets.all(0.0),
                      child: PriButton(
                        text: 'SIGN UP',
                        size: 160,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: ScreenUtil.getInstance().setHeight(40),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
