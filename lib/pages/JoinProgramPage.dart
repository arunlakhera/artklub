import 'package:custom_picker/custom_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_apps/model/Course.dart';
import 'package:flutter_apps/utilities/AppColors.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class JoinProgramPage extends StatefulWidget {
  final Course courseSelected;
  const JoinProgramPage({Key? key, required this.courseSelected}) : super(key: key);

  @override
  _JoinProgramPageState createState() => _JoinProgramPageState();
}

class _JoinProgramPageState extends State<JoinProgramPage> {
  var opt = [5, 17, 3];
  var gender;

  @override
  void initState() {
    gender = 'female';
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
  }

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
              padding: EdgeInsets.only(bottom: screenHeight * 0.07),
              children: [
                Card(
                  color: widget.courseSelected.getbgColor(),
                  child: Container(
                    padding: EdgeInsets.only(left: 10,right: 20,top: 20,bottom:10),
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
                  child: Container(
                    padding: EdgeInsets.only(left: 10,right: 10,top: 20,bottom: 10),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Column(
                      children: [

                        Container(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            'Student Details',
                            style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 14,
                              color: Colors.grey.shade600,
                            ),
                          ),
                        ),

                        TextFormField(
                          keyboardType: TextInputType.name,
                          decoration: InputDecoration(
                            prefixIcon: Icon(
                              Icons.account_circle,
                              color: widget.courseSelected.getbgColor(),
                            ),
                            filled: true,
                            labelText: 'Name',
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

                          ),
                        ),

                        SizedBox(height: 10),
                        //openDatePicker(),
                        Container(
                          height: screenHeight*0.1,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            color: Colors.grey.shade200.withOpacity(0.5),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                alignment: Alignment.centerLeft,
                                padding: EdgeInsets.only(left: 5),
                                child: Text(
                                  'Date of Birth',
                                  style: TextStyle(
                                    fontFamily: 'Roboto',
                                    fontWeight: FontWeight.w500,
                                    fontSize: 12,
                                    color: Colors.grey.shade600,
                                  ),
                                ),
                              ),
                              openDatePicker(),
                            ],
                          ),
                        ),

                        SizedBox(height: 10),
                        Container(
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            color: Colors.grey.shade200.withOpacity(0.5),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Column(
                            children: [
                              Container(
                                alignment: Alignment.centerLeft,
                                padding: EdgeInsets.only(left: 5,top: 5),
                                child: Text(
                                  'Student is a...',
                                  style: TextStyle(
                                    fontFamily: 'Roboto',
                                    fontWeight: FontWeight.w500,
                                    fontSize: 12,
                                    color: Colors.grey.shade600,
                                  ),
                                ),
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: [
                                  GestureDetector(
                                    onTap: (){
                                      setState(() {
                                        gender = 'male';
                                      });
                                    },
                                    child: Container(
                                      padding: EdgeInsets.symmetric(vertical: 15, horizontal: 30),
                                      decoration: BoxDecoration(
                                        color: gender == 'male' ? widget.courseSelected.getbgColor() : Colors.grey.shade300,
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
                                    ),
                                  ),

                                  GestureDetector(
                                    onTap: (){
                                      setState(() {
                                        gender = 'female';
                                      });
                                    },
                                    child: Container(
                                      padding: EdgeInsets.symmetric(vertical: 15, horizontal: 30),
                                      decoration: BoxDecoration(
                                        color: gender == 'female' ? widget.courseSelected.getbgColor() : Colors.grey.shade300,
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                      child: Row(
                                        children: [
                                          FaIcon(
                                            FontAwesomeIcons.female,
                                            size: screenHeight * 0.04,
                                            color: Colors.white,
                                          ),
                                          SizedBox(width: 15),
                                          Text(
                                            'Girl',
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                fontSize: 16,
                                                color: Colors.white
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),

                        SizedBox(height: 10),
                        Container(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            'Parent 1 Details',
                            style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 14,
                              color: Colors.grey.shade600,
                            ),
                          ),
                        ),
                        SizedBox(height: 2),

                        TextFormField(
                          keyboardType: TextInputType.name,
                          decoration: InputDecoration(
                            prefixIcon: Icon(
                              Icons.account_circle,
                              color: widget.courseSelected.getbgColor(),
                            ),
                            filled: true,
                            labelText: 'Name',
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

                          ),
                        ),
                        SizedBox(height: 2),
                        TextFormField(
                          keyboardType: TextInputType.phone,
                          decoration: InputDecoration(
                            prefixIcon: Icon(
                              Icons.phone,
                              color: widget.courseSelected.getbgColor(),
                            ),
                            filled: true,
                            labelText: 'Phone',
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
                          ),
                        ),
                        SizedBox(height: 2),
                        TextFormField(
                          keyboardType: TextInputType.emailAddress,
                          decoration: InputDecoration(
                            prefixIcon: Icon(
                              Icons.email,
                              color: widget.courseSelected.getbgColor(),
                            ),
                            filled: true,
                            labelText: 'Email',
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
                          ),
                        ),

                        SizedBox(height: 10),
                        Container(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            'Parent 2 Details',
                            style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 14,
                              color: Colors.grey.shade600,
                            ),
                          ),
                        ),
                        SizedBox(height: 2),
                        TextFormField(
                          keyboardType: TextInputType.name,
                          decoration: InputDecoration(
                            prefixIcon: Icon(
                              Icons.account_circle,
                              color: widget.courseSelected.getbgColor(),
                            ),
                            filled: true,
                            labelText: 'Name',
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
                          ),
                        ),
                        SizedBox(height: 2),
                        TextFormField(
                          keyboardType: TextInputType.phone,
                          decoration: InputDecoration(
                            prefixIcon: Icon(
                              Icons.phone,
                              color: widget.courseSelected.getbgColor(),
                            ),
                            filled: true,
                            labelText: 'Phone',
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

                          ),
                        ),
                        SizedBox(height: 2),
                        TextFormField(
                          keyboardType: TextInputType.emailAddress,
                          decoration: InputDecoration(
                            prefixIcon: Icon(
                              Icons.email,
                              color: widget.courseSelected.getbgColor(),
                            ),
                            filled: true,
                            labelText: 'Email',
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

                          ),
                        ),

                        SizedBox(height: 10),
                      ],
                    ),
                  ),
                ),

              ]
            ),
            Positioned(
              bottom: 10,
              left: 10,
              right: 10,
              child: Container(
                padding: EdgeInsets.only(left: 10,right: 10),
                child: FloatingActionButton.extended(
                  onPressed: () {},
                  icon: Icon(
                    Icons.send,
                    color: Colors.white,
                  ),
                  backgroundColor: Colors.black,
                  label: Text(
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
            )

          ],
        ),
      ),
    );
  }

  Widget openDatePicker() {

    var now = new DateTime.now();

    return CustomPicker(
      // deciding list whether to show loop over popup items
      optionLoop: [false, false, false],
      // give popup height
      popupHeight: MediaQuery.of(context).size.height * 0.3,
      // where to show popupmenu
      below: true,
      // give where to place popup vertically
      verticalOffset: 10,
      // handle all changes here
      handleChange: (list) {
        print(list);
      },
      // to include yes no dialog or not
      yesNo: true,
      //give color to popup selected option
      popUpSelColor: Colors.green.withAlpha(50),
      // customize text style for each popUp list
      popUpTextStyle: [
        TextStyle(color: Colors.grey.shade600, fontSize: 18),
        TextStyle(color: Colors.grey.shade600, fontSize: 18),
        TextStyle(color: Colors.grey.shade600, fontSize: 18),
      ],
      // customize text style for each list
      widTextStyle: [
        TextStyle(color: Colors.white, fontSize: 18),
        TextStyle(color: Colors.white, fontSize: 18),
        TextStyle(color: Colors.white, fontSize: 18),
      ],
      // customize divider color
      divColor: Colors.grey.shade200,
      //add padding
      contentPadding: const EdgeInsets.all(7),
      //give a decoration to your popupmenu
      popUpDecoration: BoxDecoration(
          color: Colors.white,
          border: Border.all(width: 2, color: Colors.white),
          boxShadow: [
            BoxShadow(
              color: const Color(0x33000000).withAlpha(50),
              offset: Offset(2, 4),
              blurRadius: 7,
            ),
          ],
          borderRadius: BorderRadius.circular(10),
      ),
      // decorate your picker widget
      widDecoration: BoxDecoration(
        color: widget.courseSelected.getbgColor(),
        boxShadow: [
          BoxShadow(
            color: const Color(0x33000000).withAlpha(50),
            offset: Offset(2, 4),
            blurRadius: 7,
          ),
        ],
        borderRadius: BorderRadius.circular(10),
      ),
      // input all list you want to display in popupmenu
      list: [
        [
          'Jan',
          'Feb',
          'Mar',
          'Apr',
          'May',
          'Jun',
          'Jul',
          'Aug',
          'Sep',
          'Oct',
          'Nov',
          'Dec'
        ],
        List.generate(31, (index) => '${index + 1}').toList(),
        List.generate(100, (index) => '${now.year - index}').toList(),
      ],
      // control flex property of picker children
      wtList: [3, 1, 2],
      // callback that'll be call when option of YesNo dialog is clicked
      onChanged: (List<int> value) {
        opt = value;
        setState(() {
          print('Selected Date:' + value.toString());
        });
      },
      //give initial selected item indicies
      selected: opt,
    );
  }
}
