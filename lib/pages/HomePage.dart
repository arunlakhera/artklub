import 'package:fancy_bar/fancy_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_apps/utilities/AppColors.dart';
import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  var _currentIndex = 0;

  @override
  Widget build(BuildContext context) {

    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(

      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: Icon(Icons.menu),
        title: Text('Home' , style: TextStyle(fontFamily: 'Roboto',),),
      ),
      bottomNavigationBar: SalomonBottomBar(
        currentIndex: _currentIndex,
        onTap: (i) => setState(() => _currentIndex = i),
        items: [
          /// Home
          SalomonBottomBarItem(
            icon: Icon(Icons.home),
            title: Text("Home"),
            selectedColor: Colors.purple,
          ),

          /// Likes
          SalomonBottomBarItem(
            icon: Icon(Icons.article),
            title: Text("My Courses"),
            selectedColor: Colors.pink,
          ),

          /// Search
          SalomonBottomBarItem(
            icon: Icon(Icons.notifications),
            title: Text("Notification"),
            selectedColor: Colors.orange,
          ),

          /// Profile
          SalomonBottomBarItem(
            icon: Icon(Icons.person),
            title: Text("Profile"),
            selectedColor: Colors.teal,
          ),
        ],
      ),

      body: SafeArea(
        child: Container(
          height: screenHeight,
          width: screenWidth,
          color: AppColors.pageBgColor,
          child: selectPage(),
        ),
      ),
    );
  }

  selectPage() {
    switch(_currentIndex){
      case 0:
        return Text('Home');
      case 1:
        return Text('My Courses');
      case 2:
        return Text('Notifications');
      case 3:
        return Text('Profile');
      default:
        print('Naah');

    }
  }
}

