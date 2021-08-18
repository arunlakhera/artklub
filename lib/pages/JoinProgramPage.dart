import 'package:flutter/material.dart';
import 'package:flutter_apps/model/Course.dart';
import 'package:flutter_apps/utilities/AppColors.dart';

class JoinProgramPage extends StatefulWidget {
  final Course courseSelected;
  const JoinProgramPage({Key? key, required this.courseSelected}) : super(key: key);

  @override
  _JoinProgramPageState createState() => _JoinProgramPageState();
}

class _JoinProgramPageState extends State<JoinProgramPage> {


  @override
  Widget build(BuildContext context) {

    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: AppColors.pageBgColor,
      appBar: AppBar(
        backgroundColor: Colors.white,
        toolbarHeight: screenHeight * 0.085,
        elevation: 5,
        title: Container(
          padding: EdgeInsets.only(left: 20,right: 20, top: 10, bottom: 10),
          width: double.infinity,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
            color: widget.courseSelected.getbgColor(),
          ),
          child: Text(
            'Join Program',
            //widget.courseSelected.getCourseName() ,
            style: TextStyle(
              fontFamily: 'Roboto',
              fontSize: 16,
              color: Colors.white,
            ),
          ),
        ),
      ),
      body: SafeArea(
        child: Stack(
          children: [
            ListView(
              scrollDirection: Axis.vertical,
              children: [
                Card(
                  color: widget.courseSelected.getbgColor(),
                  child: Container(
                    padding: EdgeInsets.only(left: 10,right: 20,top: 20,bottom: 10),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          padding: EdgeInsets.only(left: 10),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'I want to to join as',
                                style: TextStyle(
                                  fontFamily: 'Quicksand',
                                  fontSize: 18,
                                  color: Colors.white,
                                ),
                              ),
                              SizedBox(height: 10,),
                              Image.asset(
                                'assets/images/${widget.courseSelected.getCourseName().toString().toLowerCase()}.png',
                              ),
                            ],
                          ),
                        ),
                        Image.asset(
                          'assets/images/mascot.png',
                          fit: BoxFit.fill,
                          height: screenHeight * 0.1,
                          width: screenWidth * 0.2,
                        )
                      ],
                    ),
                  ),
                ),
                Card(
                  elevation: 5,
                  //color: AppColors.pageBgColor,//widget.courseSelected.getbgColor(),
                  child: Container(
                    padding: EdgeInsets.only(left: 10,right: 10,top: 20,bottom: 10),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Column(
                      children: [

                        TextFormField(
                          decoration: InputDecoration(
                            prefixIcon: Icon(
                              Icons.account_circle,
                              color: widget.courseSelected.getbgColor(),
                            ),
                            filled: true,
                            labelText: 'Student Name',
                            labelStyle: TextStyle(
                              fontFamily: 'Roboto',
                              fontWeight: FontWeight.bold,
                              fontSize: 12,
                              color: Colors.grey,
                            ),
                            hintText: 'Enter Student Name',
                            hintStyle: TextStyle(
                              fontFamily: 'Roboto',
                              fontWeight: FontWeight.bold,
                              fontSize: 12,
                              color: Colors.grey.shade400,
                            ),
                            // border: OutlineInputBorder(
                            //   borderRadius: BorderRadius.circular(30),
                            //   borderSide: BorderSide(
                            //     color: Colors.green,
                            //   ),
                            // ),
                            // focusedBorder: OutlineInputBorder(
                            //   borderRadius: BorderRadius.circular(30),
                            //   borderSide: BorderSide(
                            //     color: Colors.green,
                            //   ),
                            // ),
                          ),
                        ),

                        SizedBox(height: 5),
                        Text(
                          'Parent 1',
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                            decoration: TextDecoration.underline,
                          ),
                        ),
                        SizedBox(height: 2),
                        TextFormField(
                          decoration: InputDecoration(
                            prefixIcon: Icon(
                              Icons.account_circle,
                              color: widget.courseSelected.getbgColor(),
                            ),
                            filled: true,
                            labelText: 'Parent 1 Name',
                            labelStyle: TextStyle(
                              fontFamily: 'Roboto',
                              fontWeight: FontWeight.bold,
                              fontSize: 12,
                              color: Colors.grey,
                            ),
                            hintText: 'Enter Parent 1 Name',
                            hintStyle: TextStyle(
                              fontFamily: 'Roboto',
                              fontWeight: FontWeight.bold,
                              fontSize: 12,
                              color: Colors.grey.shade400,
                            ),
                            // border: OutlineInputBorder(
                            //   borderRadius: BorderRadius.circular(30),
                            //   borderSide: BorderSide(
                            //     color: Colors.green,
                            //   ),
                            // ),
                            // focusedBorder: OutlineInputBorder(
                            //   borderRadius: BorderRadius.circular(30),
                            //   borderSide: BorderSide(
                            //     color: Colors.green,
                            //   ),
                            // ),
                          ),
                        ),
                        SizedBox(height: 2),
                        TextFormField(
                          decoration: InputDecoration(
                            prefixIcon: Icon(
                              Icons.phone,
                              color: widget.courseSelected.getbgColor(),
                            ),
                            filled: true,
                            labelText: 'Parent 1 Phone',
                            labelStyle: TextStyle(
                              fontFamily: 'Roboto',
                              fontWeight: FontWeight.bold,
                              fontSize: 12,
                              color: Colors.grey,
                            ),
                            hintText: 'Enter Parent 1 Phone',
                            hintStyle: TextStyle(
                              fontFamily: 'Roboto',
                              fontWeight: FontWeight.bold,
                              fontSize: 12,
                              color: Colors.grey.shade400,
                            ),
                            // border: OutlineInputBorder(
                            //   borderRadius: BorderRadius.circular(30),
                            //   borderSide: BorderSide(
                            //     color: Colors.green,
                            //   ),
                            // ),
                            // focusedBorder: OutlineInputBorder(
                            //   borderRadius: BorderRadius.circular(30),
                            //   borderSide: BorderSide(
                            //     color: Colors.green,
                            //   ),
                            // ),
                          ),
                        ),
                        SizedBox(height: 2),
                        TextFormField(
                          decoration: InputDecoration(
                            prefixIcon: Icon(
                              Icons.email,
                              color: widget.courseSelected.getbgColor(),
                            ),
                            filled: true,
                            labelText: 'Parent 1 Email',
                            labelStyle: TextStyle(
                              fontFamily: 'Roboto',
                              fontWeight: FontWeight.bold,
                              fontSize: 12,
                              color: Colors.grey,
                            ),
                            hintText: 'Enter Parent 1 Email',
                            hintStyle: TextStyle(
                              fontFamily: 'Roboto',
                              fontWeight: FontWeight.bold,
                              fontSize: 12,
                              color: Colors.grey.shade400,
                            ),
                            // border: OutlineInputBorder(
                            //   borderRadius: BorderRadius.circular(30),
                            //   borderSide: BorderSide(
                            //     color: Colors.green,
                            //   ),
                            // ),
                            // focusedBorder: OutlineInputBorder(
                            //   borderRadius: BorderRadius.circular(30),
                            //   borderSide: BorderSide(
                            //     color: Colors.green,
                            //   ),
                            // ),
                          ),
                        ),

                        SizedBox(height: 5),
                        Text(
                          'Parent 2',
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                            decoration: TextDecoration.underline,
                          ),
                        ),
                        SizedBox(height: 2),
                        TextFormField(
                          decoration: InputDecoration(
                            prefixIcon: Icon(
                              Icons.account_circle,
                              color: widget.courseSelected.getbgColor(),
                            ),
                            filled: true,
                            labelText: 'Parent 2 Name',
                            labelStyle: TextStyle(
                              fontFamily: 'Roboto',
                              fontWeight: FontWeight.bold,
                              fontSize: 12,
                              color: Colors.grey,
                            ),
                            hintText: 'Enter Parent 2 Name',
                            hintStyle: TextStyle(
                              fontFamily: 'Roboto',
                              fontWeight: FontWeight.bold,
                              fontSize: 12,
                              color: Colors.grey.shade400,
                            ),
                            // border: OutlineInputBorder(
                            //   borderRadius: BorderRadius.circular(30),
                            //   borderSide: BorderSide(
                            //     color: Colors.green,
                            //   ),
                            // ),
                            // focusedBorder: OutlineInputBorder(
                            //   borderRadius: BorderRadius.circular(30),
                            //   borderSide: BorderSide(
                            //     color: Colors.green,
                            //   ),
                            // ),
                          ),
                        ),
                        SizedBox(height: 2),
                        TextFormField(
                          decoration: InputDecoration(
                            prefixIcon: Icon(
                              Icons.phone,
                              color: widget.courseSelected.getbgColor(),
                            ),
                            filled: true,
                            labelText: 'Parent 2 Phone',
                            labelStyle: TextStyle(
                              fontFamily: 'Roboto',
                              fontWeight: FontWeight.bold,
                              fontSize: 12,
                              color: Colors.grey,
                            ),
                            hintText: 'Enter Parent 2 Phone',
                            hintStyle: TextStyle(
                              fontFamily: 'Roboto',
                              fontWeight: FontWeight.bold,
                              fontSize: 12,
                              color: Colors.grey.shade400,
                            ),
                            // border: OutlineInputBorder(
                            //   borderRadius: BorderRadius.circular(30),
                            //   borderSide: BorderSide(
                            //     color: Colors.green,
                            //   ),
                            // ),
                            // focusedBorder: OutlineInputBorder(
                            //   borderRadius: BorderRadius.circular(30),
                            //   borderSide: BorderSide(
                            //     color: Colors.green,
                            //   ),
                            // ),
                          ),
                        ),
                        SizedBox(height: 2),
                        TextFormField(
                          decoration: InputDecoration(
                            prefixIcon: Icon(
                              Icons.email,
                              color: widget.courseSelected.getbgColor(),
                            ),
                            filled: true,
                            labelText: 'Parent 2 Email',
                            labelStyle: TextStyle(
                              fontFamily: 'Roboto',
                              fontWeight: FontWeight.bold,
                              fontSize: 12,
                              color: Colors.grey,
                            ),
                            hintText: 'Enter Parent 2 Email',
                            hintStyle: TextStyle(
                              fontFamily: 'Roboto',
                              fontWeight: FontWeight.bold,
                              fontSize: 12,
                              color: Colors.grey.shade400,
                            ),
                            // border: OutlineInputBorder(
                            //   borderRadius: BorderRadius.circular(30),
                            //   borderSide: BorderSide(
                            //     color: Colors.green,
                            //   ),
                            // ),
                            // focusedBorder: OutlineInputBorder(
                            //   borderRadius: BorderRadius.circular(30),
                            //   borderSide: BorderSide(
                            //     color: Colors.green,
                            //   ),
                            // ),
                          ),
                        ),

                      ],
                    ),
                  ),
                ),

              ]
            ),
            Positioned(
              bottom: 0,
              left: 0,
              right: 0,
              child: GestureDetector(
                onTap: (){
                  print('Send Request');
                },
                child: Card(
                  elevation: 5,
                  child: Container(
                    alignment: Alignment.center,
                    height: 50,
                    color: widget.courseSelected.getbgColor(),
                    child: Text(
                      'Send Request',
                      style: TextStyle(
                        fontFamily: 'Roboto',
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
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
