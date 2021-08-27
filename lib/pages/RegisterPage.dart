import 'package:flutter/material.dart';
import 'package:flutter_apps/pages/HomePage.dart';
import 'package:flutter_apps/pages/LoginPage.dart';
import 'package:page_transition/page_transition.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({Key? key}) : super(key: key);

  @override
  _RegisterPageState createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  bool _obscureText = true;
  String _password = '';

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: Colors.white,
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: ListView(
          scrollDirection: Axis.vertical,
          children: [
            Container(
              margin: EdgeInsets.all(5),
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
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(80),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.yellow.shade100,
                                spreadRadius: 40,
                                blurRadius: 40,
                                offset: Offset(
                                    10, 10), // changes position of shadow
                              ),
                            ],
                          ),
                          child: Image.asset(
                            'assets/images/artklub_logo.png',
                            width: 100,
                            height: 100,
                          ),
                        ),
                        Text(
                          'Give Wings to',
                          style: TextStyle(
                              fontSize: 14.0,
                              fontFamily: 'Quicksand',
                              fontWeight: FontWeight.w600,
                              color: Colors.black.withOpacity(0.5),
                              shadows: [
                                Shadow(
                                  offset: Offset(0.0, 0.0),
                                  blurRadius: 1.0,
                                  color: Color.fromARGB(255, 0, 0, 0),
                                ),
                              ]),
                        ),
                        Text(
                          'Your Imagination',
                          style: TextStyle(
                              fontSize: 14.0,
                              fontFamily: 'Quicksand',
                              fontWeight: FontWeight.w700,
                              color: Colors.black.withOpacity(0.5),
                              shadows: [
                                Shadow(
                                  offset: Offset(0.0, 0.0),
                                  blurRadius: 1.0,
                                  color: Color.fromARGB(255, 0, 0, 0),
                                ),
                              ]),
                        ),
                      ],
                    ),
                  ),
                  Row(
                    children: [
                      Container(
                        padding: EdgeInsets.fromLTRB(10, 10, 0, 0),
                        child: Text(
                          'Welcome',
                          style: TextStyle(
                              fontSize: 30,
                              fontFamily: 'Roboto',
                              shadows: [
                                Shadow(
                                  offset: Offset(1.0, 1.0),
                                  blurRadius: 3.0,
                                  color: Color.fromARGB(255, 0, 0, 0),
                                ),
                              ]
                          ),
                        ),
                      ),
                      Text(
                        '.',
                        style: TextStyle(
                          fontSize: 45,
                          fontFamily: 'Roboto',
                          fontWeight: FontWeight.bold,
                          color: Colors.green,
                        ),
                      )
                    ],
                  ),
                  Container(
                    padding: EdgeInsets.only(top: 30, left: 10, right: 10),
                    child: Column(
                      children: [
                        Material(
                          elevation: 10,
                          borderRadius: BorderRadius.circular(30),
                          child: TextFormField(
                            decoration: InputDecoration(
                              prefixIcon: Icon(
                                Icons.email,
                                color: Colors.green,
                              ),
                              fillColor: Colors.yellow.withOpacity(0.2),
                              filled: true,
                              labelText: 'Email',
                              labelStyle: TextStyle(
                                fontFamily: 'Roboto',
                                fontWeight: FontWeight.bold,
                                color: Colors.grey,
                              ),
                              hintText: 'Enter your email Id',
                              hintStyle: TextStyle(
                                fontFamily: 'Roboto',
                                fontWeight: FontWeight.bold,
                                fontSize: 14,
                                color: Colors.grey.shade400,
                              ),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(30),
                                borderSide: BorderSide(
                                  color: Colors.green,
                                ),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(30),
                                borderSide: BorderSide(
                                  color: Colors.green,
                                ),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height: 10),

                        Material(
                          elevation: 10,
                          borderRadius: BorderRadius.circular(30),
                          child: TextFormField(
                            decoration: InputDecoration(
                              prefixIcon: Icon(
                                Icons.phone,
                                color: Colors.green,
                              ),

                              fillColor: Colors.yellow.withOpacity(0.2),
                              filled: true,
                              labelText: 'Phone Number',
                              labelStyle: TextStyle(
                                fontFamily: 'Roboto',
                                fontWeight: FontWeight.bold,
                                color: Colors.grey,
                              ),
                              hintText: 'Enter your phone number',
                              hintStyle: TextStyle(
                                fontFamily: 'Roboto',
                                fontWeight: FontWeight.bold,
                                fontSize: 14,
                                color: Colors.grey.shade400,
                              ),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(30),
                                borderSide: BorderSide(
                                  color: Colors.green,
                                ),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(30),
                                borderSide: BorderSide(
                                  color: Colors.green,
                                ),
                              ),
                            ),
                            validator: (val) => val!.length < 6
                                ? 'Password too short.'
                                : null,
                            onSaved: (val) => _password = val!,
                            obscureText: _obscureText,
                          ),
                        ),
                        SizedBox(height: 10),

                        Material(
                          elevation: 10,
                          borderRadius: BorderRadius.circular(30),
                          child: TextFormField(
                            decoration: InputDecoration(
                              prefixIcon: Icon(
                                Icons.lock,
                                color: Colors.green,
                              ),
                              suffixIcon: IconButton(
                                onPressed: () {
                                  setState(() {
                                    print('Button Press');
                                    _obscureText = !_obscureText;
                                  });
                                },
                                icon: Icon(
                                  _obscureText
                                      ? Icons.visibility_off
                                      : Icons.visibility,
                                  color: Colors.green,
                                ),
                              ),
                              fillColor: Colors.yellow.withOpacity(0.2),
                              filled: true,
                              labelText: 'Password',
                              labelStyle: TextStyle(
                                fontFamily: 'Roboto',
                                fontWeight: FontWeight.bold,
                                color: Colors.grey,
                              ),
                              hintText: 'Enter your password',
                              hintStyle: TextStyle(
                                fontFamily: 'Roboto',
                                fontWeight: FontWeight.bold,
                                fontSize: 14,
                                color: Colors.grey.shade400,
                              ),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(30),
                                borderSide: BorderSide(
                                  color: Colors.green,
                                ),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(30),
                                borderSide: BorderSide(
                                  color: Colors.green,
                                ),
                              ),
                            ),
                            validator: (val) => val!.length < 6
                                ? 'Password too short.'
                                : null,
                            onSaved: (val) => _password = val!,
                            obscureText: _obscureText,
                          ),
                        ),
                        SizedBox(height: 10),

                        Material(
                          elevation: 10,
                          borderRadius: BorderRadius.circular(30),
                          child: TextFormField(
                            decoration: InputDecoration(
                              prefixIcon: Icon(
                                Icons.lock,
                                color: Colors.green,
                              ),
                              suffixIcon: IconButton(
                                onPressed: () {
                                  setState(() {
                                    _obscureText = !_obscureText;
                                  });
                                },
                                icon: Icon(
                                  _obscureText
                                      ? Icons.visibility_off
                                      : Icons.visibility,
                                  color: Colors.green,
                                ),
                              ),
                              fillColor: Colors.yellow.withOpacity(0.2),
                              filled: true,
                              labelText: 'Confirm Password',
                              labelStyle: TextStyle(
                                fontFamily: 'Roboto',
                                fontWeight: FontWeight.bold,
                                color: Colors.grey,
                              ),
                              hintText: 'Confirm your password',
                              hintStyle: TextStyle(
                                fontFamily: 'Roboto',
                                fontWeight: FontWeight.bold,
                                fontSize: 14,
                                color: Colors.grey.shade400,
                              ),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(30),
                                borderSide: BorderSide(
                                  color: Colors.green,
                                ),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(30),
                                borderSide: BorderSide(
                                  color: Colors.green,
                                ),
                              ),
                            ),
                            validator: (val) => val!.length < 6
                                ? 'Password too short.'
                                : null,
                            onSaved: (val) => _password = val!,
                            obscureText: _obscureText,
                          ),
                        ),
                        SizedBox(height: 30),

                        ElevatedButton(
                            onPressed: (){
                              Navigator.push(
                                context,
                                PageTransition(
                                  type: PageTransitionType.leftToRight,
                                  child: HomePage(),
                                ),
                              );
                            },
                            style: ElevatedButton.styleFrom(
                                elevation: 5,
                                fixedSize: Size(screenWidth - 20.0,50.0),
                                primary: Colors.yellow,
                                shadowColor: Colors.greenAccent,
                                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30))
                            ),
                            child: Text(
                              'Create',
                              style: TextStyle(
                                fontFamily: 'Quicksand',
                                fontWeight: FontWeight.bold,
                                fontSize: 18,
                                color: Colors.black,
                              ),
                            )
                        ),

                      ],
                    ),
                  )
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Already have Account?',
                  style: TextStyle(
                    fontFamily: 'Roboto',
                    fontSize: 14,
                    color: Colors.grey,
                  ),
                ),
                TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      PageTransition(
                        type: PageTransitionType.rightToLeft,
                        child: LoginPage(),
                      ),
                    );
                  },
                  child: Text(
                    'Login',
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
          ],
        ),
      ),
    );
  }
}
