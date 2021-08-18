import 'package:bottom_navy_bar/bottom_navy_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_apps/pages/CoursesPage.dart';
import 'package:flutter_apps/pages/MyCoursesPage.dart';
import 'package:flutter_apps/pages/MyProfilePage.dart';
import 'package:flutter_apps/pages/NotificationsPage.dart';
import 'package:flutter_apps/utilities/AppColors.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  var _selectedIndex= 0;

  Color activeColor = Colors.green;
  String activeTitle = 'Home';

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }
  @override
  Widget build(BuildContext context) {

    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: buildAppBar(screenHeight, screenWidth),
      bottomNavigationBar: buildBottomBar(screenHeight, screenWidth),

      body: SafeArea(
        child: Container(
          height: screenHeight,
          width: screenWidth,
          color: AppColors.pageBgColor,
          child:

          selectPage(),
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
          onPressed: (){},
          icon: Icon(Icons.menu_rounded, color: activeColor,),
        ),
      ),
      title: Container(
        padding: EdgeInsets.only(left: 20,right: 20, top: 10, bottom: 10),
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


}

