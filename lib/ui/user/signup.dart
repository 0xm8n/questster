import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'widgets/signup_form.dart';
import '../widgets/menu.dart';
import '../widgets/app_bar.dart';
import '../widgets/pri_button.dart';

class SignupPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    ScreenUtil.instance = ScreenUtil.getInstance()..init(context);
    ScreenUtil.instance = ScreenUtil(width: 720, height: 1280, allowFontScaling: true);

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
                      "Want to Gives or Takes Quests? Come on.",
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
                  SignupForm(),
                  SizedBox(height: ScreenUtil.getInstance().setHeight(40),),
                  Container(
                    alignment: Alignment.centerRight,
                    height: ScreenUtil.getInstance().setHeight(70),
                    child: RaisedButton(
                      onPressed: () => Navigator.pushNamed(context, '/'),
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
                        onTap: () {},
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
