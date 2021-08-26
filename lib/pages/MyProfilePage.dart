import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class MyProfilePage extends StatefulWidget {
  const MyProfilePage({Key? key}) : super(key: key);

  @override
  _MyProfilePageState createState() => _MyProfilePageState();
}

class _MyProfilePageState extends State<MyProfilePage> {



  @override
  Widget build(BuildContext context) {

    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Stack(
                children: [
                  Container(
                    height: MediaQuery.of(context).size.height * 0.35,
                    width: double.infinity,
                    child: Image.network(
                      'https://images.freeimages.com/images/large-previews/a3c/maia-2-1436576.jpg',
                      fit: BoxFit.fill,
                    ),
                  ),
                  Positioned(
                    bottom: 5,right: 10,
                    child: FloatingActionButton(
                      elevation: 5,
                      onPressed: (){},
                      child: Icon(
                        Icons.edit,
                      ),
                    ),
                  )

                ],
              ),

              Container(
                color: Colors.grey.shade100,
                padding: EdgeInsets.only(left: 10, right: 10, top: 5),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(
                      child: Text(
                        'Arjun Kapoor',
                        style: TextStyle(
                          fontSize: 14,
                          color: Colors.black,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                    Expanded(
                      child: Text(
                        '16 Jan 2010',
                        style: TextStyle(
                          fontSize: 14,
                          color: Colors.black,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                color: Colors.grey.shade100,
                padding: EdgeInsets.only(left: 10, right: 10, top: 5),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(
                      child: Text(
                        'Name',
                        style: TextStyle(
                          fontSize: 12,
                          color: Colors.grey.shade700,
                        ),
                      ),
                    ),
                    Expanded(
                      child: Text(
                        'Date of Birth',
                        style: TextStyle(
                          fontSize: 12,
                          color: Colors.grey.shade700,
                        ),
                      ),
                    ),
                  ],
                ),
              ),

              SizedBox(height: 2),
              Container(
                color: Colors.grey.shade100,
                alignment: Alignment.center,
                padding: EdgeInsets.only(left: 10, right: 10, top: 5),
                child: Column(
                  children: [
                    Text(
                      'Parent 1 Details',
                      style: TextStyle(
                        fontSize: 14,
                        color: Colors.black,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    Center(
                      child: Container(
                        height: 3,
                        width: screenWidth * 0.1,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          color: Colors.green,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                color: Colors.grey.shade100,
                padding: EdgeInsets.only(left: 10, right: 10, top: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(
                      child: Text(
                        'Jane Doe',
                        style: TextStyle(
                          fontSize: 14,
                          color: Colors.black,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                    Expanded(
                      child: Text(
                        '9999999999',
                        style: TextStyle(
                          fontSize: 14,
                          color: Colors.black,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                color: Colors.grey.shade100,
                padding: EdgeInsets.only(left: 10, right: 10, top: 5),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(
                      child: Text(
                        'Name',
                        style: TextStyle(
                          fontSize: 12,
                          color: Colors.grey.shade700,
                        ),
                      ),
                    ),
                    Expanded(
                      child: Text(
                        'Phone Number',
                        style: TextStyle(
                          fontSize: 12,
                          color: Colors.grey.shade700,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                color: Colors.grey.shade100,
                padding: EdgeInsets.only(left: 10, right: 10, top: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(
                      child: Text(
                        'Janedoe@gmail.com',
                        style: TextStyle(
                          fontSize: 14,
                          color: Colors.black,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),

                  ],
                ),
              ),
              Container(
                color: Colors.grey.shade100,
                padding: EdgeInsets.only(left: 10, right: 10, top: 5),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(
                      child: Text(
                        'Email Id',
                        style: TextStyle(
                          fontSize: 12,
                          color: Colors.grey.shade700,
                        ),
                      ),
                    ),

                  ],
                ),
              ),

              SizedBox(height: 2),
              Container(
                color: Colors.grey.shade100,
                alignment: Alignment.center,
                padding: EdgeInsets.only(left: 10, right: 10, top: 5),
                child: Column(
                  children: [
                    Text(
                      'Parent 2 Details',
                      style: TextStyle(
                        fontSize: 14,
                        color: Colors.black,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    Center(
                      child: Container(
                        height: 3,
                        width: screenWidth * 0.1,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          color: Colors.green,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                color: Colors.grey.shade100,
                padding: EdgeInsets.only(left: 10, right: 10, top: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(
                      child: Text(
                        'John Poe',
                        style: TextStyle(
                          fontSize: 14,
                          color: Colors.black,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                    Expanded(
                      child: Text(
                        '8888888888',
                        style: TextStyle(
                          fontSize: 14,
                          color: Colors.black,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                color: Colors.grey.shade100,
                padding: EdgeInsets.only(left: 10, right: 10, top: 5),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(
                      child: Text(
                        'Name',
                        style: TextStyle(
                          fontSize: 12,
                          color: Colors.grey.shade700,
                        ),
                      ),
                    ),
                    Expanded(
                      child: Text(
                        'Phone Number',
                        style: TextStyle(
                          fontSize: 12,
                          color: Colors.grey.shade700,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                color: Colors.grey.shade100,
                padding: EdgeInsets.only(left: 10, right: 10, top: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(
                      child: Text(
                        'Janepoe@gmail.com',
                        style: TextStyle(
                          fontSize: 14,
                          color: Colors.black,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),

                  ],
                ),
              ),
              Container(
                color: Colors.grey.shade100,
                padding: EdgeInsets.only(left: 10, right: 10, top: 5),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(
                      child: Text(
                        'Email Id',
                        style: TextStyle(
                          fontSize: 12,
                          color: Colors.grey.shade700,
                        ),
                      ),
                    ),

                  ],
                ),
              ),

              SizedBox(height: 2),
              Container(
                width: double.infinity,
                color: Colors.grey.shade100,
                padding: EdgeInsets.only(left: 10, right: 10, top: 10, bottom: 10),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text(
                      'I am a...',
                      style: TextStyle(
                        fontSize: 14,
                        color: Colors.black,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.symmetric(vertical: 15, horizontal: 30),
                      decoration: BoxDecoration(
                        color: Colors.green,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Row(
                        children: [
                          FaIcon(
                            FontAwesomeIcons.male,
                            size: screenHeight * 0.04,
                            color: Colors.white,
                          ),
                          SizedBox(width: 15),
                          Text(
                            'Boy',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 16,
                                color: Colors.white
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),

            ],
          ),
        )
      ),
    );
  }



}
