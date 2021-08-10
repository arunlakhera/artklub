import 'package:flutter/material.dart';
import 'package:flutter_apps/pages/ForgotPasswordPage.dart';
import 'package:flutter_apps/pages/HomePage.dart';
import 'package:flutter_apps/pages/LoginPage.dart';
import 'package:flutter_apps/pages/RegisterPage.dart';
import 'package:page_transition/page_transition.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'ArtKlub',
      debugShowCheckedModeBanner: false,

      theme: ThemeData(
        primarySwatch: Colors.yellow,
      ),
      home: LoginPage(),
      onGenerateRoute: (settings) {
        switch (settings.name) {
          case '/LoginPage':
            return PageTransition(
              child: LoginPage(),
              type: PageTransitionType.rightToLeft,
              settings: settings,
              reverseDuration: Duration(seconds: 3),
            );
            break;
          case '/RegisterPage':
            return PageTransition(
              child: RegisterPage(),
              type: PageTransitionType.leftToRight,
              settings: settings,
              reverseDuration: Duration(seconds: 3),
            );
            break;
          case '/LoginPage':
            return PageTransition(
              child: LoginPage(),
              type: PageTransitionType.rightToLeft,
              settings: settings,
              reverseDuration: Duration(seconds: 3),
            );
            break;
          case '/ForgotPasswordPage':
            return PageTransition(
              child: ForgotPasswordPage(),
              type: PageTransitionType.fade,
              settings: settings,
              reverseDuration: Duration(seconds: 3),
            );
            break;
          case '/HomePage':
            return PageTransition(
              child: HomePage(),
              type: PageTransitionType.rotate,
              settings: settings,
              reverseDuration: Duration(seconds: 3),
            );
            break;
          default:
            return null;
        }
      },
    );
  }
}

