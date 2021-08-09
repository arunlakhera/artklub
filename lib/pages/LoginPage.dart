import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_apps/pages/RegisterPage.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Center(
            child: Container(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              margin: EdgeInsets.all(10),
              padding: EdgeInsets.all(10),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    child: Image.asset(
                      'assets/images/artklub_logo.png',
                      width: 150,
                      height: 150,
                    ),
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

                  Form(
                      child: Column(
                        children: [],
                      )
                  ),


                ],
              ),
            ),
          ),
          // child: Container(
          //   margin: EdgeInsets.only(left: 10, right: 10,top: 10,bottom: 10),
          //   child: Column(
          //     children: <Widget>[
          //       SizedBox(height: 20,),
          //       Center(
          //         child: Container(
          //           child: Column(
          //             children: [
          //               SizedBox(height: 20,),
          //               Container(
          //                 height: 120,
          //                 width: 150,
          //                 child: Image.asset(
          //                   'assets/images/artklub_logo.png',
          //                   fit: BoxFit.fill,
          //                 ),
          //               ),
          //               SizedBox(height: 20,),// Please check the image
          //               Text(
          //                 " Give Wings to",
          //                 style: TextStyle(fontSize: 25.0),
          //               ),
          //               SizedBox(height: 10,),
          //               Text(
          //                 "Your Imagination",
          //                 style: TextStyle(fontSize: 25.0, color: Colors.green),
          //               )
          //             ],
          //           ),
          //         ),
          //       ),
          //       Padding(
          //         padding: EdgeInsets.symmetric(horizontal: 15),
          //         child: Column(
          //           crossAxisAlignment: CrossAxisAlignment.start,
          //           children: <Widget>[
          //             Text(
          //               "Email Id",
          //               style: TextStyle(fontSize: 15, color: Colors.grey.shade600),
          //             ),
          //             SizedBox(
          //               height: 10,
          //             ),
          //             TextField(
          //                 decoration: InputDecoration(
          //                     border: InputBorder.none,
          //                     fillColor: Color(0xfff3f3f4),
          //                     filled: true))
          //           ],
          //         ),
          //       ),
          //       Padding(
          //         padding: const EdgeInsets.only(
          //             left: 15.0, right: 15.0, top: 15, bottom: 0),
          //         child: Column(
          //           crossAxisAlignment: CrossAxisAlignment.start,
          //           children: <Widget>[
          //             Text(
          //               "Password",
          //               style: TextStyle(fontSize: 15, color: Colors.grey.shade600),
          //             ),
          //             SizedBox(
          //               height: 10,
          //             ),
          //             TextField(
          //                 decoration: InputDecoration(
          //                     border: InputBorder.none,
          //                     fillColor: Color(0xfff3f3f4),
          //                     filled: true,
          //                     suffixIcon: new GestureDetector(
          //                         child: new Icon(
          //                       Icons.remove_red_eye,
          //                       color: Colors.grey,
          //                     ))))
          //           ],
          //         ),
          //       ),
          //       TextButton(
          //         onPressed: () {
          //           //TODO FORGOT PASSWORD SCREEN GOES HERE
          //         },
          //         child: Align(
          //           alignment: Alignment.centerRight,
          //           child: Text(
          //             'Forget Password ?',
          //             style: TextStyle(color: Colors.black, fontSize: 15),
          //           ),
          //         ),
          //       ),
          //       Container(
          //         width: MediaQuery.of(context).size.width,
          //         height: 40,
          //         margin: EdgeInsets.all(10),
          //         child: ElevatedButton(
          //           onPressed: () {},
          //           child: Text('Login',style: TextStyle(color: Colors.black),),
          //           style: ButtonStyle(
          //             backgroundColor: MaterialStateProperty.resolveWith<Color>(
          //               (Set<MaterialState> states) {
          //                 if (states.contains(MaterialState.pressed))
          //                   return Colors.green;
          //                 return Colors.yellow;
          //               },
          //             ),
          //           ),
          //         ),
          //       ),
          //       SizedBox(
          //         height: 130,
          //       ),
          //       TextButton(
          //         onPressed: () {
          //           Navigator.push(context,
          //               MaterialPageRoute(builder: (context) => RegisterPage()));
          //         },
          //         child: RichText(
          //           text: TextSpan(
          //             style: DefaultTextStyle.of(context).style,
          //             children: <TextSpan>[
          //               TextSpan(
          //                 text: "Don't have an Account ? ",
          //                 style: TextStyle(fontSize: 14, color: Colors.grey),
          //               ),
          //               TextSpan(
          //                 text: 'Sign up',
          //                 style: TextStyle(
          //                     fontWeight: FontWeight.w800,
          //                     color: Colors.green,
          //                     fontSize: 14),
          //               ),
          //             ],
          //           ),
          //         ),
          //       ),
          //     ],
          //   ),
          // ),
        ),
      ),
    );
  }
}
