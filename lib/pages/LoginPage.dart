import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_apps/pages/RegisterPage.dart';
import 'package:page_transition/page_transition.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage>{

  @override
  Widget build(BuildContext context) {

    final screenheight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: Colors.white,
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Stack(
            children: [
              Container(
                margin: EdgeInsets.all(10),
                padding: EdgeInsets.fromLTRB(0, 10, 0, 80),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width,
                      margin: EdgeInsets.only(top: 30),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Image.asset(
                            'assets/images/artklub_logo.png',
                            width: 100,
                            height: 100,
                          ),
                          Text(
                            'Give Wings to',
                            style: TextStyle(
                              fontSize: 14.0,
                              fontFamily: 'Quicksand',
                              fontWeight: FontWeight.w600,
                              color: Colors.black.withOpacity(0.5),
                            ),
                          ),
                          Text(
                            'Your Imagination',
                            style: TextStyle(
                              fontSize: 14.0,
                              fontFamily: 'Quicksand',
                              fontWeight: FontWeight.w700,
                              color: Colors.black.withOpacity(0.5),
                            ),
                          ),
                        ],
                      ),
                    ),

                    SizedBox(height: 20),
                    Container(
                      padding: EdgeInsets.fromLTRB(10, 10, 0, 0),
                      child: Text(
                        'Hello',
                        style: TextStyle(
                          fontSize: 30,
                          fontFamily: 'Roboto',
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
                      child: Row(
                        children: [
                          Text(
                            'There',
                            style: TextStyle(
                              fontSize: 40,
                              fontFamily: 'Roboto',
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            '.',
                            style: TextStyle(
                              fontSize: 40,
                              fontFamily: 'Roboto',
                              fontWeight: FontWeight.bold,
                              color: Colors.green,
                            ),
                          )
                        ],
                      ),
                    ),

                    Container(
                      padding: EdgeInsets.only(top: 35,left: 20,right: 20),
                      child: Column(
                        children: [
                          TextField(
                            decoration: InputDecoration(
                              labelText: 'Email',
                              labelStyle: TextStyle(
                                fontFamily: 'Roboto',
                                fontWeight: FontWeight.bold,
                                color: Colors.grey,
                              ),
                              focusedBorder: UnderlineInputBorder(
                                borderSide: BorderSide(
                                  color: Colors.green,
                                ),
                              ),
                            ),
                          ),
                          SizedBox(height: 20),
                          TextField(
                            decoration: InputDecoration(
                                labelText: 'Password',
                                labelStyle: TextStyle(
                                  fontFamily: 'Roboto',
                                  fontWeight: FontWeight.bold,
                                  color: Colors.grey,

                                ),
                                focusedBorder: UnderlineInputBorder(
                                    borderSide: BorderSide(
                                      color: Colors.green,
                                    ),
                                ),
                            ),
                            obscureText: true,
                          ),
                          SizedBox(height: 10),
                          Container(
                            width: MediaQuery.of(context).size.width,
                            alignment: Alignment.centerRight,
                            child: TextButton(
                              onPressed: (){},
                              child: Text(
                                'Forgot Password',
                                style: TextStyle(
                                  fontFamily: 'Roboto',
                                  fontWeight: FontWeight.bold,
                                  color: Colors.green,
                                  decoration: TextDecoration.underline,
                                ),
                              ),
                            ),
                          ),

                          SizedBox(height: 30),

                          Container(
                            height: 50,
                            child: Material(
                              borderRadius: BorderRadius.circular(20),
                              color: Colors.yellow,
                              shadowColor: Colors.greenAccent,
                              elevation: 7,
                              child: GestureDetector(
                                onTap: (){},
                                child: Center(
                                  child: Text(
                                    'Login',
                                    style: TextStyle(
                                      fontFamily: 'Roboto',
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black,

                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    )

                  ],
                ),
              ),

              Container(
                padding: EdgeInsets.fromLTRB(0, screenheight - (screenheight * 0.12), 0, 0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'New to ArtKlub?',
                      style: TextStyle(
                        fontFamily: 'Robto',
                        fontSize: 14,
                        color: Colors.grey,
                      ),
                    ),
                    TextButton(
                      onPressed: (){
                        Navigator.push(
                          context,
                          PageTransition(
                            type: PageTransitionType.fade,
                            child: RegisterPage(),
                          ),
                        );
                      },
                      child: Text(
                        'Register',
                        style: TextStyle(
                          fontFamily: 'Robot',
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                          color: Colors.green,
                          decoration: TextDecoration.underline,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

