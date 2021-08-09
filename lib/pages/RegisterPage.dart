import 'package:flutter/material.dart';
import 'package:flutter_apps/pages/ForgotPasswordPage.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({Key? key}) : super(key: key);

  @override
  _RegisterPageState createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: BoxDecoration(
            gradient: LinearGradient(begin: Alignment.topCenter, colors: [
              Colors.grey.shade300,
              Colors.grey.shade300,
              Colors.grey.shade300,
            ])),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: EdgeInsets.all(20),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Center(
                      child: Container(
                        height: 200,
                        width: 250,
                        child: Image.asset('assets/images/artklub_logo.png'),
                      ),
                    ),
                    SizedBox(height: 30),
                    Container(
                      child: Text("Welcome",
                          style: TextStyle(color: Colors.black, fontSize: 30)),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 20),
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(60),
                        topRight: Radius.circular(60))),
                child: Padding(
                  padding: EdgeInsets.all(30),
                  child: SingleChildScrollView(
                    child: Column(
                      children: <Widget>[
                        SizedBox(
                          height: 60,
                        ),
                        Container(
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10)),
                          child: Column(
                            children: <Widget>[
                              Container(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    Text(
                                      "Name",
                                      style: TextStyle(
                                          fontSize: 15,
                                          color: Colors.grey.shade600),
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    TextField(
                                        decoration: InputDecoration(
                                            border: OutlineInputBorder(
                                              borderRadius: BorderRadius.all(
                                                  Radius.circular(8.0)),
                                              borderSide:
                                              BorderSide(width: 1.0),
                                            ),
                                            enabledBorder: OutlineInputBorder(
                                              borderSide: BorderSide(
                                                  color: Colors.grey),
                                            )))
                                  ],
                                ),
                              ),
                              SizedBox(
                                height: 20.0,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Text(
                                    "Phone Number",
                                    style: TextStyle(
                                        fontSize: 15,
                                        color: Colors.grey.shade600),
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  TextField(
                                      decoration: InputDecoration(
                                          border: OutlineInputBorder(
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(8.0)),
                                            borderSide: BorderSide(width: 1.0),
                                          ),
                                          enabledBorder: OutlineInputBorder(
                                            borderSide:
                                            BorderSide(color: Colors.grey),
                                          )))
                                ],
                              ),
                              SizedBox(
                                height: 20.0,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Text(
                                    "Password",
                                    style: TextStyle(
                                        fontSize: 15,
                                        color: Colors.grey.shade600),
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  TextField(
                                      decoration: InputDecoration(
                                          suffixIcon: new GestureDetector(
                                              child: new Icon(
                                                  Icons.remove_red_eye,
                                                  color: Colors.grey)),
                                          border: OutlineInputBorder(
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(8.0)),
                                            borderSide: BorderSide(width: 1.0),
                                          ),
                                          enabledBorder: OutlineInputBorder(
                                            borderSide:
                                            BorderSide(color: Colors.grey),
                                          )))
                                ],
                              ),
                              SizedBox(
                                height: 20.0,
                              ),
                              Row(
                                children: [
                                  Text(
                                    "Sign up",
                                    style: TextStyle(fontSize: 25.0),
                                  ),
                                  SizedBox(
                                    width: 180.0,
                                  ),
                                  RaisedButton(
                                    color: Colors.yellow,
                                    child: Icon(Icons.arrow_forward),
                                    onPressed: () {},
                                  )
                                ],
                              ),
                              FlatButton(
                                onPressed: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              ForgotPasswordPage()));
                                },
                                child: RichText(
                                  text: TextSpan(
                                    style: DefaultTextStyle.of(context).style,
                                    children: <TextSpan>[
                                      TextSpan(
                                        text: "Already Have Account ? ",
                                        style: TextStyle(
                                            fontSize: 14, color: Colors.grey),
                                      ),
                                      TextSpan(
                                        text: 'Log In',
                                        style: TextStyle(
                                            fontWeight: FontWeight.w800,
                                            color: Colors.green,
                                            fontSize: 14),
                                      ),
                                    ],
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
              ),
            )
          ],
        ),
      ),
    );
  }
}
