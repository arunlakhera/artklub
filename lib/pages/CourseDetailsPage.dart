import 'package:flutter/material.dart';
import 'package:flutter_apps/model/Course.dart';
import 'package:flutter_apps/utilities/AppColors.dart';

class CourseDetailsPage extends StatelessWidget {
  final Course courseSelected;

  const CourseDetailsPage({Key? key, required this.courseSelected})
      : super(key: key);

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
            color: courseSelected.getbgColor(),
          ),
          child: Text(
            courseSelected.getCourseName() ,
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
            Card(
              child: Stack(
                children: [
                  Center(
                    child: Container(
                      margin: EdgeInsets.only(left: 10,right: 10, top: screenHeight * 0.095,bottom: 20),
                      padding:
                          EdgeInsets.only(left: 10, right: 10, top: 10, bottom: 20),
                      decoration: BoxDecoration(
                        color: courseSelected.getbgColor(),
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: Container(
                        padding: EdgeInsets.only(left: 5, right: 5),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Opacity(
                              opacity: 0.6,
                              child: Image.asset(
                                'assets/images/${courseSelected.getcNumImage()}',
                                fit: BoxFit.fill,
                              ),
                            ),

                            SizedBox(height: 20),

                            Image.asset(
                              'assets/images/${courseSelected.getCourseName().toString().toLowerCase()}.png',
                              fit: BoxFit.fill,
                            ),

                            SizedBox(height: 10),

                            Text(
                              courseSelected.getCourseDesc(),
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 15,
                                wordSpacing: 1,
                                fontFamily: 'Quicksand'
                              ),
                            ),

                            SizedBox(height: 10),

                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                    'Medium  :',
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold,
                                        wordSpacing: 1,
                                        fontFamily: 'Quicksand'
                                    ),
                                ),

                                SizedBox(width: 5),

                                Text(
                                    courseSelected.getCourseMedium(),
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 15,
                                        wordSpacing: 1,
                                        fontFamily: 'Quicksand'
                                    )
                                ),
                              ],
                            ),
                            SizedBox(height: 5),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [

                                Text(
                                  'Duration :',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold,
                                      wordSpacing: 1,
                                      fontFamily: 'Quicksand'
                                  ),
                                ),

                                SizedBox(width: 5),

                                Text(
                                    courseSelected.getCourseDuration(),
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 14,
                                        wordSpacing: 1,
                                        fontFamily: 'Quicksand'
                                    )
                                ),

                              ],
                            ),

                            SizedBox(height: 20),

                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Container(
                                  padding: EdgeInsets.all(10),
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  child: Image.asset(
                                    'assets/images/mascot.png',
                                    height: 60,
                                    width: 60,
                                    fit: BoxFit.fill,

                                  ),
                                ),

                                Container(
                                  padding: EdgeInsets.all(10),
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  child: Image.asset(
                                    'assets/images/mascot.png',
                                    height: 60,
                                    width: 60,
                                    fit: BoxFit.fill,
                                  ),
                                ),
                                Container(
                                  padding: EdgeInsets.all(10),
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(10),

                                  ),
                                  child: Image.asset(
                                    'assets/images/mascot.png',
                                    height: 60,
                                    width: 60,
                                    fit: BoxFit.fill,
                                  ),
                                )
                              ],
                            ),

                            SizedBox(height: 20,),

                            Container(
                              alignment: Alignment.center,
                              child: ElevatedButton(
                                onPressed: () {
                                  // Navigator.push(
                                  //   context,
                                  //   PageTransition(
                                  //     type: PageTransitionType.fade,
                                  //     child: CourseDetailsPage(courseSelected: this.courseSelected),
                                  //   ),
                                  // );
                                },
                                style: ElevatedButton.styleFrom(
                                  padding: EdgeInsets.symmetric(vertical: 10, horizontal: 15),

                                  elevation: 5,
                                  primary: Colors.black,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                ),
                                child: Text(
                                  'Join this Course',
                                  style: TextStyle(
                                    fontFamily: 'Quicksand',
                                    fontWeight: FontWeight.bold,
                                    fontSize: 16,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ),



                          ],
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    top: 20,
                    right: 20,
                    child: Image.asset(
                      'assets/images/mascot.png',
                      height: screenHeight * 0.2,
                      width: screenWidth * 0.4,
                        fit: BoxFit.fill,
                    ),
                  ),

                  // Column(
                  //   children: [
                  //     Row(
                  //       mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  //       children: [
                  //         Container(
                  //           child: Text(
                  //             courseSelected.getCourseName(),
                  //             style: TextStyle(
                  //               color: Colors.white,
                  //               fontFamily: 'Roboto',
                  //               fontWeight: FontWeight.bold,
                  //               fontSize: 30,
                  //               letterSpacing: 1,
                  //             ),
                  //           ),
                  //         ),
                  //         Container(
                  //           alignment: Alignment.bottomRight,
                  //           child: Image.asset(
                  //             'assets/images/mascot.png',
                  //             height: screenHeight * 0.25,
                  //             width: screenWidth * 0.5,
                  //           ),
                  //         ),
                  //       ],
                  //     )
                  //   ],
                  // ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
