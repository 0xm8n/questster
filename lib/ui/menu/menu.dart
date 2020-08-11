import 'package:flutter/material.dart';

class MenuDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          Container(
            color: Color(0xFF38b7e1),
            height: 120,
            padding: EdgeInsets.only(top: 20.0, bottom: 20.0),
            child: ListTile(
              title: Align(
                alignment: Alignment.bottomLeft,
                child: Text(
                  'Main Menu',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 24,
                    fontFamily: "Kanit-Bold",
                  ),
                ),
              ),
              onTap: () {
                Navigator.pop(context);
              },
            ),
          ),
          ListTile(
            leading: Icon(
              Icons.account_circle,
              color: Color(0xFF5d74e3),
            ),
            title: Text(
              'Login',
              style: TextStyle(
                color: Color(0xFF5d74e3),
                fontFamily: "Kanit-Bold",
              ),
            ),
            onTap: () {
              Navigator.pushNamed(context, '/login');
            },
          ),
          ListTile(
            leading: Icon(
              Icons.home,
              color: Color(0xFF5d74e3),
            ),
            title: Text(
              'Home',
              style: TextStyle(
                color: Color(0xFF5d74e3),
                fontFamily: "Kanit-Bold",
              ),
            ),
            onTap: () {
              Navigator.pushNamed(context, '/');
            },
          ),
          ListTile(
            leading: Icon(
              Icons.list,
              color: Color(0xFF5d74e3),
            ),
            title: Text(
              'Quest List',
              style: TextStyle(
                color: Color(0xFF5d74e3),
                fontFamily: "Kanit-Bold",
              ),
            ),
            onTap: () {
              Navigator.pushNamed(context, '/questlist');
            },
          ),
          ListTile(
            leading: Icon(
              Icons.settings,
              color: Color(0xFF5d74e3),
            ),
            title: Text(
              'Settings',
              style: TextStyle(
                color: Color(0xFF5d74e3),
                fontFamily: "Kanit-Bold",
              ),),
          ),
        ],
      ),
    );
  }
}