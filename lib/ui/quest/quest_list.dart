import 'package:flutter/material.dart';
import '../menu/menu.dart';

class QuestListPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: new IconThemeData(
          color: Colors.white,
        ),
        title: Text(
          'Quest List',
          style: TextStyle(
            color: Colors.white,
            fontFamily: "Kanit-Bold",
          ),
        ),
      ),
      drawer: MenuDrawer(),
      body: Builder(builder: (BuildContext context) {
        return CardList();
      }),
    );
  }
}

class CardList extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.only(bottom: 20.0),
      children: List.generate(20, (index) => new Padding(
        padding: EdgeInsets.only(top: 10.0,left: 10.0,right: 10.0),
        child: DecoratedBox(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10.00),
            border: Border.all(
              color: Color(0xFF5d74e3),
              width: 1,
            ),
          ),
          child: ListTile(
            title: Text(
              'No.${index+1}: The Enchanted Nightingale',
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
            onTap: () {
              Navigator.pushNamed(context, '/questdetail');
            },
          ),
        ),
      ),),
    );
  }
}