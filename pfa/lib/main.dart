import 'package:flutter/material.dart';
import 'package:pfa/ClassDetailsPage/class_details_page.dart';
import 'package:pfa/HomePage/home_page.dart';
import 'package:pfa/LoginPage/login_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: const MaterialColor(
          0xff7058BA,
          <int, Color>{
            50: Color(0xffF5F4FF),
            100: Color(0xffEDEBFF),
            200: Color(0xffD6D2FF),
            300: Color(0xffBDB2FF),
            400: Color(0xffA39BFF),
            500: Color(0xff7058BA),
            600: Color(0xff7058BA),
            700: Color(0xff7058BA),
            800: Color(0xff7058BA),
            900: Color(0xff7058BA),
          },
        ),
      ),
      home: LoginPage(),
      routes: {
        '/home': (context) => HomePage(),
        '/class-details': (context) => const ClassDetails(),
      },
    );
  }
}
