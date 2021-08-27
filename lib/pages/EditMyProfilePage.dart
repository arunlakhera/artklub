import 'package:flutter/material.dart';

class EditMyProfilePage extends StatefulWidget {
  const EditMyProfilePage({Key? key}) : super(key: key);

  @override
  _EditMyProfilePageState createState() => _EditMyProfilePageState();
}

class _EditMyProfilePageState extends State<EditMyProfilePage> {
  @override
  Widget build(BuildContext context) {

    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          toolbarHeight: screenHeight * 0.085,
          elevation: 5,
          title: Container(
            padding: EdgeInsets.only(left: 20, right: 20, top: 10, bottom: 10),
            width: double.infinity,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),

            ),
            child: Text(
              'Edit',
              style: TextStyle(
                fontFamily: 'Roboto',
                fontSize: 16,
                color: Colors.black,
              ),
            ),
          ),
        ),
      body: SafeArea(
        child: Container(),
      ),
    );
  }
}
