import 'package:flutter/material.dart';

class MyProfilePage extends StatefulWidget {
  const MyProfilePage({Key? key}) : super(key: key);

  @override
  _MyProfilePageState createState() => _MyProfilePageState();
}

class _MyProfilePageState extends State<MyProfilePage> {

  bool profileSelected = false;
  bool coursesSelected = false;
  bool assignmentSelected = false;
  bool paymentSelected = false;

  @override
  void initState() {

    super.initState();
    profileSelected = false;
    coursesSelected = false;
    assignmentSelected = false;
    paymentSelected = false;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: MediaQuery.of(context).size.height * 0.35,
              width: double.infinity,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: NetworkImage(
                    'https://images.freeimages.com/images/large-previews/a3c/maia-2-1436576.jpg',
                  ),
                  fit: BoxFit.fill,
                ),
              ),
              child: Align(
                alignment: Alignment.bottomCenter,
                child: Container(
                  height: 50,
                  margin: EdgeInsets.only(left: 30,right: 30,bottom: 10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.black.withOpacity(0.7),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      TextButton(
                        onPressed: (){
                          setState(() {
                            profileSelected = true;
                            coursesSelected = false;
                            assignmentSelected = false;
                            paymentSelected = false;
                          });
                        },
                        child: Text(
                          'Profile',
                          style: TextStyle(
                            fontFamily: 'Quicksand',
                            fontSize: profileSelected ? 16 : 14,
                            fontWeight: profileSelected ? FontWeight.bold : FontWeight.normal,
                            color: profileSelected ? Colors.yellow : Colors.white,
                          ),
                        ),
                      ),
                      TextButton(
                        onPressed: (){
                          setState(() {
                            profileSelected = false;
                            coursesSelected = true;
                            assignmentSelected = false;
                            paymentSelected = false;
                          });
                        },
                        child: Text(
                          'Courses',
                          style: TextStyle(
                            fontFamily: 'Quicksand',
                            fontWeight: coursesSelected ? FontWeight.bold : FontWeight.normal,
                            fontSize: coursesSelected ? 16 : 14,
                            color: coursesSelected ? Colors.yellow : Colors.white,
                          ),
                        ),
                      ),
                      TextButton(
                        onPressed: (){
                          setState(() {
                            profileSelected = false;
                            coursesSelected = false;
                            assignmentSelected = true;
                            paymentSelected = false;
                          });
                        },
                        child: Text(
                          'Assignment',
                          style: TextStyle(
                            fontFamily: 'Quicksand',
                            fontWeight: assignmentSelected ? FontWeight.bold : FontWeight.normal,
                            fontSize: assignmentSelected ? 16 : 14,
                            color: assignmentSelected ? Colors.yellow : Colors.white,
                          ),
                        ),
                      ),
                      TextButton(
                        onPressed: (){
                          setState(() {
                            profileSelected = false;
                            coursesSelected = false;
                            assignmentSelected = false;
                            paymentSelected = true;
                          });
                        },
                        child: Text(
                          'Payment',
                          style: TextStyle(
                            fontFamily: 'Quicksand',
                            fontWeight: paymentSelected ? FontWeight.bold : FontWeight.normal,
                            fontSize: paymentSelected ? 16 : 14,
                            color: paymentSelected ? Colors.yellow : Colors.white,
                          ),
                        ),
                      ),

                    ],
                  ),
                ),
              ),
            ),

          ],
        )
      ),
    );
  }
}
