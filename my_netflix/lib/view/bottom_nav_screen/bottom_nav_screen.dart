import 'package:flutter/material.dart';
import 'package:my_netflix/utils/color_constant/color_constant.dart';
import 'package:my_netflix/view/cooming_soon_screen/coming_soon_screen.dart';
import 'package:my_netflix/view/download_screen/download_screen.dart';
import 'package:my_netflix/view/home_screen/home_screen.dart';
import 'package:my_netflix/view/more_screen/more_screen.dart';

class BottomNavScreen extends StatefulWidget {
  const BottomNavScreen({super.key});

  @override
  State<BottomNavScreen> createState() => _BottomNavScreenState();
}

class _BottomNavScreenState extends State<BottomNavScreen> {
  List<Widget> myScreens = [
    HomeScreen(),
    Text("Screen 2"),
    ComingSoonScreen(),
    DownloadScreen(),
    MoreScreen(),
  ];
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: myScreens[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: currentIndex,
          onTap: (value) {
            setState(() {
              currentIndex = value;
            });
          },
          type: BottomNavigationBarType.fixed,
          backgroundColor: ColorConstant.matBlack,
          unselectedItemColor: ColorConstant.iconGrey,
          selectedItemColor: ColorConstant.textColor,
          unselectedLabelStyle: TextStyle(fontSize: 8),
          selectedLabelStyle: TextStyle(fontSize: 8, height: 1.5),
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
            BottomNavigationBarItem(icon: Icon(Icons.search), label: 'Search'),
            BottomNavigationBarItem(
                icon: Icon(Icons.video_library), label: 'Coming Soon'),
            BottomNavigationBarItem(
                icon: Icon(Icons.download), label: 'Downloads'),
            BottomNavigationBarItem(icon: Icon(Icons.menu), label: 'More'),
          ]),
    );
  }
}
