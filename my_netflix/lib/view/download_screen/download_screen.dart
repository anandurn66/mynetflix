import 'package:flutter/material.dart';
import 'package:my_netflix/utils/color_constant/color_constant.dart';

class DownloadScreen extends StatelessWidget {
  const DownloadScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConstant.matBlack,
      appBar: AppBar(
        leadingWidth: 200,
        leading: Row(
          children: [
            SizedBox(
              width: 10,
            ),
            Icon(
              Icons.download_for_offline,
              color: ColorConstant.LogoRed,
            ),
            SizedBox(
              width: 10,
            ),
            Text(
              "Smart Downloads",
              style: TextStyle(color: ColorConstant.textColor),
            ),
          ],
        ),
        backgroundColor: ColorConstant.matBlack,
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Introducing Downloads For You",
              style: TextStyle(color: ColorConstant.textColor, fontSize: 19),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sit quam dui, vivamusbibendum ut. A morbi mi tortor ut felis non accumsan accumsan quis. Massa, id ut ipsum aliquam  enim non posuere pulvinar diam.",
              textAlign: TextAlign.justify,
              style: TextStyle(
                color: ColorConstant.textColor,
                fontSize: 12,
                height: 1.3,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Center(
              child: CircleAvatar(
                radius: 130,
                backgroundColor: ColorConstant.containerGrey,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              height: 40,
              color: Colors.blue,
              child: Center(
                child: Text(
                  "SETUP",
                  style: TextStyle(color: ColorConstant.textColor),
                ),
              ),
            ),
            SizedBox(
              height: 44,
            ),
            Center(
              child: Container(
                height: 33,
                width: 239,
                color: ColorConstant.containerGrey,
                child: Center(
                  child: Text(
                    "Find Something to Download",
                    style: TextStyle(color: ColorConstant.textColor),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
