import 'dart:ui';

import 'package:flutter/material.dart';
import 'ui/user/login.dart';
import 'ui/user/signup.dart';
import 'ui/quest/quest_detail.dart';
import 'ui/quest/quest_list.dart';
import 'ui/home/home.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: "Kanit-Regular",
        primaryColor: Color(0xFF38b7e1),
      ),
      home: HomePage(),
      routes: {
        '/login': (context) => LoginPage(),
        '/signup': (context) => SignupPage(),
        '/questlist': (context) => QuestListPage(),
        '/questdetail': (context) => QuestDetailPage(),
      },
    );
  }
}
