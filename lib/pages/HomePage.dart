import 'package:bottom_navy_bar/bottom_navy_bar.dart';
import 'package:fancy_drawer/fancy_drawer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_apps/pages/CoursesPage.dart';
import 'package:flutter_apps/pages/MyCoursesPage.dart';
import 'package:flutter_apps/pages/MyProfilePage.dart';
import 'package:flutter_apps/pages/NotificationsPage.dart';
import 'package:flutter_apps/pages/PaymentPage.dart';
import 'package:flutter_apps/utilities/AppColors.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:page_transition/page_transition.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with SingleTickerProviderStateMixin{

  var _selectedIndex= 0;

  Color activeColor = Colors.green;
  String activeTitle = 'Home';

  late FancyDrawerController _controller;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    _controller = FancyDrawerController(
        vsync: this, duration: Duration(milliseconds: 250))
      ..addListener(() {
        setState(() {
        }); // Must call setState
      });
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _controller.dispose();
  }

  @override
  Widget build(BuildContext context) {

    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;

    return Material(
      child: FancyDrawerWrapper(
        backgroundColor: Colors.white,
        controller: _controller,
        drawerItems: showMenu(screenWidth),

        child: Scaffold(
          appBar: buildAppBar(screenHeight, screenWidth),
          bottomNavigationBar: buildBottomBar(screenHeight, screenWidth),

          body: SafeArea(
            child: Container(
              height: screenHeight,
              width: screenWidth,
              color: AppColors.pageBgColor,
              child: selectPage(),
            ),
          ),
        ),
      ),
    );
  }

  // App Bar Widget
  PreferredSizeWidget buildAppBar(screenHeight, screenWidth){
    return AppBar(
      backgroundColor: Colors.white,
      toolbarHeight: screenHeight * 0.085,
      elevation: 5,
      leading: Container(
        child: IconButton(
          onPressed: (){
            _controller.toggle();
          },
          icon: Icon(Icons.menu_rounded, color: activeColor,),
        ),
      ),
      title: Container(
        padding: EdgeInsets.only(left: 20,right: 20, top: 5,bottom: 5),
        width: double.infinity,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          color: activeColor.withOpacity(0.3),
        ),
        child: Row(
          children: [
            CircleAvatar(
              radius: 20,
              backgroundImage: NetworkImage('https://images.freeimages.com/images/large-previews/a3c/maia-2-1436576.jpg'),
            ),
            SizedBox(width: 10),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Jane Doe' ,
                  style: TextStyle(
                    fontFamily: 'Roboto',
                    fontSize: 16,
                    color: activeColor,
                  ),
                ),
                Text(
                  'Hyderabad' ,
                  style: TextStyle(
                    fontFamily: 'Roboto',
                    fontSize: 12,
                    fontStyle: FontStyle.italic,
                    color: activeColor.withOpacity(0.7),
                  ),
                ),
              ],
            ),

          ],
        ),
      ),
    );
  }

  // Bottom Bar Widget
  Widget buildBottomBar(screenHeight, screenWidth){
    return BottomNavyBar(
      backgroundColor: Colors.white,
      selectedIndex: _selectedIndex,
      containerHeight: screenHeight * 0.07,
      showElevation: true,
      items: [
        /// Home
        BottomNavyBarItem(
          icon: Icon(Icons.home,),
          title: Text("Home", style: TextStyle(fontSize: 12,),),
          activeColor: Colors.green,
        ),

        /// Likes
        BottomNavyBarItem(
          icon: Icon(Icons.article),
          title: Text("My Courses", style: TextStyle(fontSize: 12),),
          activeColor: Colors.deepOrange,
        ),

        /// Search
        BottomNavyBarItem(
          icon: Icon(Icons.notifications),
          title: Text("Notifications", style: TextStyle(fontSize: 12),),
          activeColor: Colors.purple,
        ),

        /// Profile
        BottomNavyBarItem(
          icon: Icon(Icons.person),
          title: Text("Profile", style: TextStyle(fontSize: 12),),
          activeColor: Colors.pink,
        ),
      ],
      onItemSelected: (int value) {
        setState(() {
          _selectedIndex = value;
          switch(_selectedIndex){
            case 0:
              activeTitle = 'Home';
              activeColor = Colors.green;
              break;
            case 1:
              activeTitle = 'My Courses';
              activeColor = Colors.deepOrange;
              break;
            case 2:
              activeTitle = 'Notifications';
              activeColor = Colors.purple;
              break;
            case 3:
              activeTitle = 'Profile';
              activeColor = Colors.pink;
              break;
            default:
              activeTitle = 'Home';
              activeColor = Colors.green;
          }
        });
      },
    );
  }

  selectPage() {

    switch(_selectedIndex){
      case 0:
        return CoursesPage();
      case 1:
        return MyCoursesPage();
      case 2:
        return NotificationsPage();
      case 3:
        return MyProfilePage();
      default:
        return HomePage();

    }
  }

  List<Widget> showMenu(screenWidth){
    return [

      Container(
        alignment: Alignment.centerLeft,
        padding: EdgeInsets.only(left: screenWidth * 0.2,bottom: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(80),
                boxShadow: [
                  BoxShadow(
                    color: Colors.yellow.shade100,
                    spreadRadius: 40,
                    blurRadius: 40,
                    offset: Offset(
                        10, 10), // changes position of shadow
                  ),
                ],
              ),
              child: Image.asset(
                'assets/images/artklub_logo.png',
                width: 100,
                height: 100,
              ),
            ),
            Text(
              'Give Wings to',
              style: TextStyle(
                  fontSize: 14.0,
                  fontFamily: 'Quicksand',
                  fontWeight: FontWeight.w600,
                  color: Colors.black.withOpacity(0.5),
                  shadows: [
                    Shadow(
                      offset: Offset(0.0, 0.0),
                      blurRadius: 1.0,
                      color: Color.fromARGB(255, 0, 0, 0),
                    ),
                  ]),
            ),
            Text(
              'Your Imagination',
              style: TextStyle(
                  fontSize: 14.0,
                  fontFamily: 'Quicksand',
                  fontWeight: FontWeight.w700,
                  color: Colors.black.withOpacity(0.5),
                  shadows: [
                    Shadow(
                      offset: Offset(0.0, 0.0),
                      blurRadius: 1.0,
                      color: Color.fromARGB(255, 0, 0, 0),
                    ),
                  ]),
            ),
          ],
        ),
      ),

      ElevatedButton.icon(
        onPressed: (){

          setState(() {
            _selectedIndex = 0;
          });
          _controller.close();

        },
        style: ElevatedButton.styleFrom(
          alignment: Alignment.centerLeft,
          primary: Colors.white,
        ),
        icon: Icon(
          Icons.home, color: Colors.green,
        ),
        label: Text(
          "Home",
          style: TextStyle(
            fontSize: 18,
            color: Colors.green,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      ElevatedButton.icon(
        onPressed: (){

          setState(() {
            _selectedIndex = 1;
          });
          _controller.close();

        },
        style: ElevatedButton.styleFrom(
          alignment: Alignment.centerLeft,
          primary: Colors.white,
        ),
        icon: Icon(
          Icons.article, color: Colors.green,
        ),
        label: Text(
          "My Courses",
          style: TextStyle(
            fontSize: 18,
            color: Colors.green,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      ElevatedButton.icon(
        onPressed: (){
          setState(() {
            _selectedIndex = 2;
          });
          _controller.close();

        },
        style: ElevatedButton.styleFrom(
          alignment: Alignment.centerLeft,
          primary: Colors.white,
        ),
        icon: Icon(
          Icons.notifications, color: Colors.green,
        ),
        label: Text(
          "Notifications",
          style: TextStyle(
            fontSize: 18,
            color: Colors.green,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      ElevatedButton.icon(
        onPressed: (){
          setState(() {
            _selectedIndex = 3;
          });
          _controller.close();

        },
        style: ElevatedButton.styleFrom(
          alignment: Alignment.centerLeft,
          primary: Colors.white,
        ),
        icon: Icon(
          Icons.person, color: Colors.green,
        ),
        label: Text(
          "My Profile",
          style: TextStyle(
            fontSize: 18,
            color: Colors.green,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      ElevatedButton.icon(
        onPressed: (){
          Navigator.push(
            context,
            PageTransition(
              type: PageTransitionType.leftToRight,
              child: PaymentPage(),
            ),
          );

          _controller.close();

        },
        style: ElevatedButton.styleFrom(
          alignment: Alignment.centerLeft,
          primary: Colors.white,
        ),
        icon: Icon(
          Icons.monetization_on, color: Colors.green,
        ),
        label: Text(
          "Payment",
          style: TextStyle(
            fontSize: 18,
            color: Colors.green,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      ElevatedButton.icon(
        onPressed: (){},
        style: ElevatedButton.styleFrom(
          alignment: Alignment.centerLeft,
          primary: Colors.white,
        ),
        icon: FaIcon(
          FontAwesomeIcons.powerOff,
          color: Colors.green,
        ),
        label: Text(
          "Logout",
          style: TextStyle(
            fontSize: 18,
            color: Colors.green,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),

      ];
  }

}

