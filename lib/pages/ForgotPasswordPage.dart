import 'package:flutter/material.dart';
import 'package:flutter_apps/utilities/AppColors.dart';

class ForgotPasswordPage extends StatefulWidget {
  const ForgotPasswordPage({Key? key}) : super(key: key);

  @override
  _ForgotPasswordPageState createState() => _ForgotPasswordPageState();
}

class _ForgotPasswordPageState extends State<ForgotPasswordPage> {

  @override
  Widget build(BuildContext context) {

    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: AppColors.pageBgColor,
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text(
          'Forgot Password',
          style: TextStyle(
            fontFamily: 'Roboto',
          ),

        ),
      ),
      body: SafeArea(
        child: Center(
          child: Container(
            margin: EdgeInsets.only(left: 20,right: 20, top: 50, bottom: 50),
            padding: EdgeInsets.only(left: 15, right:  15, top: 30, bottom: 10),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 20),
                Center(
                  child: Image.asset(
                    'assets/images/mascot.png',
                    height: 100,
                    width: 100,
                  ),
                ),
                SizedBox(height: 20),
                Text(
                  'Reset your Password.',
                  style: TextStyle(
                    color: Colors.grey.shade800,
                    fontSize: 25,
                    fontFamily: 'Quicksand',
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 20),
                Text(
                  'Please enter your email Id. We will send a link to your registered email Id to reset the password.',
                  style: TextStyle(
                    color: Colors.grey.shade600,
                    fontSize: 14,
                    fontFamily: 'Quicksand',
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 20),
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
                      hintText: 'Enter your registered email Id',
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
                SizedBox(height: 40),

                ElevatedButton(
                    onPressed: (){

                    },
                    style: ElevatedButton.styleFrom(
                        elevation: 5,
                        fixedSize: Size(screenWidth - 20.0,50.0),
                        primary: Colors.yellow,
                        shadowColor: Colors.greenAccent,
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30))
                    ),
                    child: Text(
                      'Send Me Link',
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
          ),
        ),
      ),
    );
  }
}
