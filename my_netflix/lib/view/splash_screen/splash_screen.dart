import 'package:flutter/material.dart';
import 'package:my_netflix/utils/color_constant/color_constant.dart';
import 'package:my_netflix/utils/image_constant/image_constant.dart';
import 'package:my_netflix/utils/text_constant/text_constant.dart';
import 'package:my_netflix/view/username_screen/user_name_screen.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConstant.PrimaryBlack,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          SizedBox(),
          Center(
            child: Container(
              height: 56,
              width: 207,
              child: Image.asset(ImageConstant.myLogo),
            ),
          ),
          Container(
            child: Center(
                child: CircularProgressIndicator(
              color: ColorConstant.LogoRed,
            )),
          ),
          InkWell(
            onTap: () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                  builder: (context) => UserNameScreen(),
                ),
              );
            },
            child: Container(
              height: 50,
              width: 200,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: ColorConstant.LogoRed,
              ),
              child: Center(
                child: Text(
                  "Get Started",
                  style: TextConstant.heading,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
