import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:questster/controller/auth_contoller.dart';
import 'package:questster/ui/user/signup.dart';
import 'package:questster/ui/widgets/menu.dart';
import 'package:questster/ui/widgets/app_bar.dart';
import 'package:questster/ui/widgets/pri_button.dart';

class SigninPage extends StatelessWidget {
  final AuthController authController = Get.put(AuthController());
  @override
  Widget build(BuildContext context) {
    ScreenUtil.instance = ScreenUtil.getInstance()..init(context);
    ScreenUtil.instance =
        ScreenUtil(width: 720, height: 1280, allowFontScaling: true);

    TextEditingController emailController = TextEditingController();
    TextEditingController passwordController = TextEditingController();

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
              Container(
                height: ScreenUtil.getInstance().setHeight(40),
                color: Color(0xFF99bbe9),
              ),
              Padding(
                padding: EdgeInsets.only(top: 0.0),
                child: Image.asset("assets/jobs_s.jpg"),
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
                  Container(
                    child: Text(
                      "Want to Gives or Takes Quests?\nCome on.",
                      overflow: TextOverflow.ellipsis,
                      maxLines: 2,
                      style: TextStyle(
                        fontFamily: "Kanit-Medium",
                        fontSize: 20,
                        letterSpacing: .6,
                      ),
                    ),
                  ),
                  SizedBox(height: ScreenUtil.getInstance().setHeight(200)),
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
                          Text("Signin",
                              style: TextStyle(
                                  fontSize: 24,
                                  fontFamily: "Kanit-Bold",
                                  letterSpacing: .6)),
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
                            controller: emailController,
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
                            controller: passwordController,
                          ),
                          SizedBox(
                            height: ScreenUtil.getInstance().setHeight(35),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: <Widget>[
                              Text(
                                "Forgot Password?",
                                style: TextStyle(
                                    color: Color(0xFF5d74e3),
                                    fontFamily: "Kanit-Medium",
                                    fontSize:
                                        ScreenUtil.getInstance().setSp(28)),
                              )
                            ],
                          ),
                          SizedBox(
                            height: ScreenUtil.getInstance().setHeight(20),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: ScreenUtil.getInstance().setHeight(40)),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Container(
                        alignment: Alignment.centerRight,
                        height: ScreenUtil.getInstance().setHeight(70),
                        child: RaisedButton(
                            onPressed: () {
                              authController.signIn(
                                emailController.text,
                                passwordController.text
                              );
                            },
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(30.0)),
                            padding: EdgeInsets.all(0.0),
                            child: PriButton(
                              text: 'SIGN IN',
                              size: 160,
                            )),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: ScreenUtil.getInstance().setHeight(40),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        "New User? ",
                        style: TextStyle(
                          fontFamily: "Kanit-Medium",
                          fontSize: 16,
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          Get.to(SignupPage());
                        },
                        child: Text(
                          "SignUp",
                          style: TextStyle(
                            color: Color(0xFF5d74e3),
                            fontFamily: "Kanit-Bold",
                            fontSize: 16,
                          ),
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
