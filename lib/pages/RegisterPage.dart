import 'package:flutter/material.dart';
import 'package:flutter_apps/pages/ForgotPasswordPage.dart';
import 'package:flutter_apps/pages/LoginPage.dart';
import 'package:page_transition/page_transition.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({Key? key}) : super(key: key);

  @override
  _RegisterPageState createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            margin: EdgeInsets.all(10),
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

                SizedBox(height: 10),
                Row(
                  children: [
                    Container(
                      padding: EdgeInsets.fromLTRB(10, 10, 0, 0),
                      child: Text(
                        'Create Account',
                        style: TextStyle(
                          fontSize: 40,
                          fontFamily: 'Roboto',
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Text(
                      '.',
                      style: TextStyle(
                        fontSize: 50,
                        fontFamily: 'Roboto',
                        fontWeight: FontWeight.bold,
                        color: Colors.green,
                      ),
                    )
                  ],
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
                      SizedBox(height: 10),
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
                      TextField(
                        decoration: InputDecoration(
                          labelText: 'Confirm Password',
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
                      TextField(
                        keyboardType: TextInputType.number,
                        decoration: InputDecoration(
                          labelText: 'Phone Number',
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
                                'Create',
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
                      SizedBox(height: 50),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Already have Account?',
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
                                  child: LoginPage(),
                                ),
                              );
                            },
                            child: Text(
                              'Login',
                              style: TextStyle(
                                fontFamily: 'Robto',
                                fontSize: 14,
                                fontWeight: FontWeight.bold,
                                color: Colors.green,
                                decoration: TextDecoration.underline,
                              ),
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                )

              ],
            ),
          ),
        ),
      ),
    );
  }
}
