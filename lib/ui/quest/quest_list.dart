import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../widgets/menu.dart';
import '../widgets/app_bar.dart';
import '../widgets/pri_button.dart';

class QuestListPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    ScreenUtil.instance = ScreenUtil.getInstance()..init(context);
    ScreenUtil.instance = ScreenUtil(width: 720, height: 1280, allowFontScaling: true);

    return Scaffold(
      appBar: AppBar(
        iconTheme: new IconThemeData(color: Colors.white),
        title: MainAppBar(title: "Quest List"),
      ),
      drawer: MenuDrawer(),
      body: QuestList(),
    );
  }
}

class QuestList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.only(top: 10, bottom: 20.0),
      children: List.generate(
        20,
        (index) => new QuestListItemCard(
          title: 'No.${index + 1}: The Enchanted Nightingale',
          subtitle: 'Music by Julie Gable. Lyrics by Sidney Stein.',
          detail:
              'jab fh gsabyfg vycgafuE EAYCBGULAGW CUGBCB UAFHNCUG BRCUGFBA WULCGBLXULARC GFBFDHVBDFVH Vbvhjzvbf hsdfg',
        ),
      ),
    );
  }
}

class QuestListItemCard extends StatelessWidget {
  final String title;
  final String subtitle;
  final String detail;

  QuestListItemCard({this.title, this.subtitle, this.detail});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: 5.0, left: 10.0, right: 10.0),
      child: Container(
        width: double.infinity,
        padding: EdgeInsets.only(bottom: 5),
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
        child: Padding(
          padding: EdgeInsets.only(left: 16.0, right: 16.0, top: 16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
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
                height: ScreenUtil.getInstance().setHeight(6),
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
                height: ScreenUtil.getInstance().setHeight(14),
              ),
              Row(
                children: [
                  Container(
                    width: ScreenUtil.getInstance().setWidth(420),
                    child: Text(
                      detail != null ? detail : "",
                      overflow: TextOverflow.ellipsis,
                      maxLines: 2,
                    ),
                  ),
                  Expanded(child: Container()),
                  Container(
                    alignment: Alignment.centerRight,
                    height: ScreenUtil.getInstance().setHeight(70),
                    child: RaisedButton(
                        onPressed: () {Navigator.pushNamed(context, '/questdetail');},
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30.0)),
                        padding: EdgeInsets.all(0.0),
                        child: PriButton(text: 'MORE', size: 100,)
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: ScreenUtil.getInstance().setHeight(20),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
