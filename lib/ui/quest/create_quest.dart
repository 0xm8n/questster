import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'widgets/create_form.dart';
import '../widgets/menu.dart';
import '../widgets/app_bar.dart';
import '../widgets/pri_button.dart';

class CreateQuestPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    ScreenUtil.instance = ScreenUtil.getInstance()..init(context);
    ScreenUtil.instance = ScreenUtil(width: 720, height: 1280, allowFontScaling: true);

    return Scaffold(
      backgroundColor: Colors.white,
      resizeToAvoidBottomPadding: true,
      appBar: AppBar(
        iconTheme: new IconThemeData(color: Colors.white),
        title: MainAppBar(title: "Create Quest"),
      ),
      body: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: <Widget>[
              Expanded(
                child: Container(
                  height: ScreenUtil.getInstance().setHeight(100),
                ),
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
                  SizedBox(height: ScreenUtil.getInstance().setHeight(40),),
                  CreateQuestForm(),
                  SizedBox(height: ScreenUtil.getInstance().setHeight(40),),
                  Container(
                    alignment: Alignment.centerRight,
                    height: ScreenUtil.getInstance().setHeight(70),
                    child: RaisedButton(
                      onPressed: () => Navigator.pushNamed(context, '/questlist'),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30.0),
                      ),
                      padding: EdgeInsets.all(0.0),
                      child: PriButton(
                        text: 'POST',
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
