import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:questster/ui/widgets/app_bar.dart';
import 'package:questster/ui/widgets/pri_button.dart';

class QuestDetailPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    ScreenUtil.instance = ScreenUtil.getInstance()..init(context);
    ScreenUtil.instance = ScreenUtil(width: 720, height: 1280, allowFontScaling: true);

    return Scaffold(
      appBar: AppBar(
        iconTheme: new IconThemeData(color: Colors.white),
        title: MainAppBar(title: "Quest Detail"),
      ),
      body: Builder(builder: (BuildContext context) {
        return QuestCard(
          title: 'The Enchanted Nightingale',
          subtitle: 'Music by Julie Gable. Lyrics by Sidney Stein.',
          detail: 'jab fh gsabyfg vycgafuE EAYCBGULAGW CUGBCB UAFHNCUG BRCUGFBA WULCGBLXULARC GFBFDHVBDFVH Vbvhjzvbf hsdfg',
        );
      }),
    );
  }
}

class QuestCard extends StatelessWidget {
  final String title;
  final String subtitle;
  final String detail;

  QuestCard({this.title, this.subtitle, this.detail});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 5, bottom: 5, left: 5, right: 5),
      child: Container(
        width: double.infinity,
        padding: EdgeInsets.only(top: 5, bottom: 5),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(8.0),
          boxShadow: [
            BoxShadow(
              color: Colors.black12,
              offset: Offset(0.0, 10.0),
              blurRadius: 10.0,
            ),
            BoxShadow(
              color: Colors.black12,
              offset: Offset(0.0, -10.0),
              blurRadius: 10.0,
            ),
          ],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Image.network(
                "https://images.squarespace-cdn.com/content/593ef9dad482e9888c052643/1566433219960-4J9DXFCE4G0I2C7M1F4O/quest_2019.jpg?content-type=image%2Fjpeg"),
            Padding(
              padding: EdgeInsets.only(left: 16.0, right: 16.0, top: 16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title != null ? title : "",
                    style: TextStyle(
                      fontSize: 18,
                      fontFamily: "Kanit-Bold",
                      letterSpacing: .6,
                      color: Color(0xFF5d74e3),
                    ),
                  ),
                  SizedBox(
                    height: ScreenUtil.getInstance().setHeight(10),
                  ),
                  Text(
                    subtitle != null ? subtitle : "",
                    style: TextStyle(
                      fontFamily: "Kanit-Medium",
                      fontSize: 16,
                      color: Color(0xFF5d74e3),
                    ),
                  ),
                  SizedBox(
                    height: ScreenUtil.getInstance().setHeight(20),
                  ),
                  Text(
                    detail != null ? detail : "",
                    maxLines: 50,
                    overflow: TextOverflow.ellipsis,
                  ),
                ],
              ),
            ),
            SizedBox(
              height: ScreenUtil.getInstance().setHeight(30),
            ),
            Container(
              alignment: Alignment.center,
              height: ScreenUtil.getInstance().setHeight(70),
              child: RaisedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/questlist');
                  },
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30.0)),
                  padding: EdgeInsets.all(0.0),
                  child: PriButton(
                    text: 'TAKE',
                    size: 120,
                  )),
            ),
            SizedBox(
              height: ScreenUtil.getInstance().setHeight(20),
            ),
          ],
        ),
      ),
    );
  }
}
