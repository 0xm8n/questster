import 'package:flutter/material.dart';
import '../menu/menu.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: new IconThemeData(color: Colors.white),
        title: Text(
          'Questster',
          style: TextStyle(
            color: Colors.white,
            fontFamily: "Kanit-Bold",
          ),
        ),
      ),
      drawer: MenuDrawer(),
      body: Center(
        child: Center(
          child: Text('Home Page'),
        ),
      ),
    );
  }
}