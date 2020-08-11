import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class QuestDetailPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: new IconThemeData(
          color: Colors.white,
        ),
        title: Text(
          'Quest Detail',
          style: TextStyle(
            color: Colors.white,
            fontFamily: "Kanit-Bold",
          ),
        ),
      ),
      body: Builder(builder: (BuildContext context) {
        return Card(
          child: Column(
            children: <Widget>[
              Image.network("https://images.squarespace-cdn.com/content/593ef9dad482e9888c052643/1566433219960-4J9DXFCE4G0I2C7M1F4O/quest_2019.jpg?content-type=image%2Fjpeg"),
              ListTile(
                title: Text(
                  'The Enchanted Nightingale',
                  style: TextStyle(
                    color: Color(0xFF5d74e3),
                    fontFamily: "Kanit-Bold",
                  ),
                ),
                subtitle: Text(
                  'Music by Julie Gable. Lyrics by Sidney Stein.',
                  style: TextStyle(
                    color: Color(0xFF5d74e3),
                    fontFamily: "Kanit-Medium",
                  ),
                ),
              ),
              SizedBox(
                height: ScreenUtil.getInstance().setHeight(35),
              ),
              InkWell(
                child: Container(
                  width: ScreenUtil.getInstance().setWidth(330),
                  height: ScreenUtil.getInstance().setHeight(100),
                  decoration: BoxDecoration(
                      gradient: LinearGradient(colors: [
                        Color(0xFF17ead9),
                        Color(0xFF6078ea)
                      ]),
                      borderRadius: BorderRadius.circular(6.0),
                      boxShadow: [
                        BoxShadow(
                            color: Color(0xFF6078ea).withOpacity(.3),
                            offset: Offset(0.0, 8.0),
                            blurRadius: 8.0)
                      ]),
                  child: Material(
                    color: Colors.transparent,
                    child: InkWell(
                      onTap: () {},
                      child: Center(
                        child: Text("GET",
                          style: TextStyle(
                              color: Colors.white,
                              fontFamily: "Kanit-Bold",
                              fontSize: 18,
                              letterSpacing: 1.0),
                        ),
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
        );
      }),
    );
  }
}