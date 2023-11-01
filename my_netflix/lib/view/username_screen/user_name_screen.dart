import 'package:flutter/material.dart';
import 'package:my_netflix/utils/color_constant/color_constant.dart';
import 'package:my_netflix/data_base/db.dart';
import 'package:my_netflix/utils/image_constant/image_constant.dart';
import 'package:my_netflix/view/bottom_nav_screen/bottom_nav_screen.dart';

class UserNameScreen extends StatelessWidget {
  const UserNameScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConstant.PrimaryBlack,
      appBar: AppBar(
        backgroundColor: ColorConstant.PrimaryBlack,
        centerTitle: true,
        title: SizedBox(
          height: 38,
          width: 137,
          child: Image.asset(ImageConstant.myLogo),
        ),
        elevation: 0,
        actions: [
          SizedBox(
            child: Image.asset("assets/images/pencil.png"),
          ),
          SizedBox(
            width: 16,
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(30.0),
        child: GridView.builder(
          itemCount: DataBase.ProfilesList.length,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2, mainAxisSpacing: 25, crossAxisSpacing: 25),
          itemBuilder: (context, index) => InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => BottomNavScreen(),
                ),
              );
            },
            child: Container(
              color: ColorConstant.LogoRed,
              child: Center(
                child: Text(
                  DataBase.ProfilesList[index],
                  style: TextStyle(fontSize: 40),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
