import 'dart:ui';

import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:questster/controller/binding/auth_binding.dart';
import 'ui/user/signin.dart';
import 'ui/user/signup.dart';
import 'ui/quest/quest_detail.dart';
import 'ui/quest/quest_list.dart';
import 'ui/home/home.dart';
import 'ui/quest/create_quest.dart';
import 'package:google_fonts/google_fonts.dart';

void main() async {
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: GoogleFonts.kanit().toString(),
        primaryColor: Color(0xFF38b7e1),
      ),
      initialBinding: AuthBinding(),
      home: HomePage(),
      initialRoute: '/',
      getPages: [
        GetPage(name: '/', page: () => HomePage()),
        GetPage(name: '/signin', page: () => SigninPage()),
        GetPage(name: '/signup', page: () => SignupPage()),
        GetPage(name: '/questlist', page: () => QuestListPage()),
        GetPage(name: '/questdetail', page: () => QuestDetailPage()),
        GetPage(name: '/questcreate', page: () => CreateQuestPage()),
      ],
      routes: {
      },
    );
  }
}
