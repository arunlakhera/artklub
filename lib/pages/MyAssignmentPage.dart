import 'package:flutter/material.dart';

class MyAssignmentPage extends StatefulWidget {
  const MyAssignmentPage({Key? key}) : super(key: key);

  @override
  _MyAssignmentPageState createState() => _MyAssignmentPageState();
}

class _MyAssignmentPageState extends State<MyAssignmentPage> {
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
            'Join Program',
            style: TextStyle(
              fontFamily: 'Roboto',
              fontSize: 16,
              color: Colors.white,
            ),
          ),
        ),
      ),
      body: SafeArea(
        child: ListView(
          children: [
            Container(
              margin: EdgeInsets.only(
                left: 10,
                right: 10,
                top: 10,
              ),
              padding: EdgeInsets.symmetric(vertical: 5, horizontal: 5),
              height: screenHeight * 0.4,
              decoration: BoxDecoration(
                color: Colors.grey.shade200,
              ),
              child: Column(
                children: [
                  Text(
                    'Assignment 1',
                    style: TextStyle(
                      fontFamily: 'Roboto',
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                  SizedBox(height: 10),
                  Container(
                    color: Colors.green,
                    width: screenWidth * 0.09,
                    height: 2,
                  ),
                  SizedBox(height: 15),
                  Text(
                    'This is assignment for Rookie class in which you need to draw a painting of an old man with a hat and stick. You can use your imagination for the colors.',
                    style: TextStyle(
                      wordSpacing: 1,
                      letterSpacing: 1,
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      color: Colors.black,
                    ),
                  )
                ],
              ),
            ),
            SizedBox(height: 10),
            Container(
                margin: EdgeInsets.only(left: 10, right: 10, bottom: 10),
                padding: EdgeInsets.symmetric(vertical: 5, horizontal: 5),
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: Colors.grey.shade200,
                ),
                child: Text(
                  'Pending',
                  style: TextStyle(
                    fontFamily: 'Roboto',
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.green,
                  ),
                )),
            SizedBox(height: 10),
            Container(
              margin: EdgeInsets.only(left: 10, right: 10, bottom: 10),
              padding: EdgeInsets.symmetric(vertical: 5, horizontal: 5),
              height: screenHeight * 0.3,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: Colors.grey.shade200,
              ),
              child: Stack(
                children: [
                  Center(
                    child: Icon(
                      Icons.image,
                      size: 100,
                      color: Colors.red,
                    ),
                  ),
                  Align(
                    alignment: Alignment.bottomRight,
                    child: ElevatedButton(
                      onPressed: () {},
                      child: Text('Upload'),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.only(left: 10,right: 10),
              child: FloatingActionButton.extended(
                onPressed: () {},
                icon: Icon(
                  Icons.save,
                  color: Colors.white,
                ),
                backgroundColor: Colors.black,
                label: Text(
                  'Submit',
                  style: TextStyle(
                    fontFamily: 'Roboto',
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
