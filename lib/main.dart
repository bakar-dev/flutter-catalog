import "package:flutter/material.dart";
import 'package:flutter_app/utils/routes.dart';
import 'package:google_fonts/google_fonts.dart';

import 'pages/login_page.dart';
import 'pages/home_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primarySwatch: Colors.indigo, fontFamily: GoogleFonts.lato().fontFamily ),
      initialRoute: "/",
      routes: {
        "/" : (context)=> LoginPage(),
        MyRoutes.homeRoute: (context)=> Home(),
        MyRoutes.loginRoute: (context) => LoginPage()
      },
    );
  }
}