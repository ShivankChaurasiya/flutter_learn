import "package:flutter/material.dart";
import "package:flutter_learn/pages/home_page.dart";
import 'package:flutter_learn/pages/login_page.dart';
import 'package:google_fonts/google_fonts.dart';
import 'Utils/routes.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      themeMode: ThemeMode.light,
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.deepPurple,
        fontFamily: GoogleFonts.lato().fontFamily,
        primaryTextTheme: GoogleFonts.latoTextTheme()
      ),
      // initialRoute: MyRoutes.homeRoute,
      darkTheme: ThemeData(brightness: Brightness.dark
      ),
      routes: {
        "/": (context) => LoginPage(),
        MyRoutes.homeRoute: (context) => HomePage(),
        MyRoutes.loginRoute: (context) => LoginPage()
      },
    );
  }
}
 