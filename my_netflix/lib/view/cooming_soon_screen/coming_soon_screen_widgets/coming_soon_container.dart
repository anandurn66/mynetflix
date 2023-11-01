import 'package:flutter/material.dart';
import 'package:my_netflix/utils/color_constant/color_constant.dart';

class ComingSoonContainer extends StatelessWidget {
  const ComingSoonContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 200,
              decoration: BoxDecoration(
                color: ColorConstant.LogoRed,
                image: DecorationImage(
                    image: NetworkImage(
                      "https://upload.wikimedia.org/wikipedia/en/c/c3/Castle_%26_Castle_poster.jpg",
                    ),
                    fit: BoxFit.fitWidth),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Column(
                  children: [
                    Icon(
                      Icons.notification_important_rounded,
                      color: ColorConstant.iconGrey,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "Remind Me",
                      style: TextStyle(color: ColorConstant.textColor),
                    ),
                  ],
                ),
                SizedBox(
                  width: 20,
                ),
                Column(
                  children: [
                    Icon(
                      Icons.share,
                      color: ColorConstant.iconGrey,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "Share",
                      style: TextStyle(color: ColorConstant.textColor),
                    ),
                  ],
                ),
                SizedBox(
                  width: 20,
                ),
              ],
            ),
            Text(
              "Season 1 Coming December 14",
              style: TextStyle(color: ColorConstant.textColor),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              "Castle & Castle",
              style: TextStyle(color: ColorConstant.textColor, fontSize: 18),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sit quam dui, vivamusbibendum ut. A morbi mi tortor ut felis non accumsan accumsan quis. Massa, id ut ipsum aliquam  enim non posuere pulvinar diam.",
              textAlign: TextAlign.justify,
              style: TextStyle(
                  color: ColorConstant.textColor, fontSize: 12, height: 1.3),
            ),
            SizedBox(
              height: 10,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  Text(
                    "Steamy",
                    style:
                        TextStyle(color: ColorConstant.textColor, fontSize: 11),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  CircleAvatar(
                    backgroundColor: ColorConstant.iconGrey,
                    radius: 3,
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Text(
                    "Soapy",
                    style:
                        TextStyle(color: ColorConstant.textColor, fontSize: 11),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  CircleAvatar(
                    backgroundColor: ColorConstant.iconGrey,
                    radius: 3,
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Text(
                    "Slow Burn",
                    style:
                        TextStyle(color: ColorConstant.textColor, fontSize: 11),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  CircleAvatar(
                    backgroundColor: ColorConstant.iconGrey,
                    radius: 3,
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Text(
                    "Suspenseful",
                    style:
                        TextStyle(color: ColorConstant.textColor, fontSize: 11),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  CircleAvatar(
                    backgroundColor: ColorConstant.iconGrey,
                    radius: 3,
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Text(
                    "Teen",
                    style:
                        TextStyle(color: ColorConstant.textColor, fontSize: 11),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  CircleAvatar(
                    backgroundColor: ColorConstant.iconGrey,
                    radius: 3,
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Text(
                    "Mystery",
                    style:
                        TextStyle(color: ColorConstant.textColor, fontSize: 11),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
