import 'package:flutter/material.dart';
import 'package:my_netflix/view/cooming_soon_screen/coming_soon_screen_widgets/coming_soon_container.dart';
import 'package:my_netflix/view/cooming_soon_screen/coming_soon_screen_widgets/new_arrival_container.dart';

import '../../utils/color_constant/color_constant.dart';

class ComingSoonScreen extends StatelessWidget {
  const ComingSoonScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leadingWidth: 200,
        leading: Row(
          children: [
            SizedBox(
              width: 10,
            ),
            Icon(
              Icons.notification_add,
              color: ColorConstant.LogoRed,
            ),
            SizedBox(
              width: 10,
            ),
            Text(
              "Notifications",
              style: TextStyle(color: ColorConstant.textColor),
            ),
          ],
        ),
        backgroundColor: ColorConstant.matBlack,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Container(
          color: ColorConstant.matBlack,
          child: Column(
            children: [
              SizedBox(
                height: 0,
              ),
              NewArrivalContainer(
                title: "New Arrival",
                subTitle: "El Chapo",
                date: "Nov 6",
              ),
              NewArrivalContainer(
                title: "New Arrival2",
                subTitle: "El Chapo3",
                date: "Nov 7",
              ),
              SizedBox(
                height: 15,
              ),
              ListView.builder(
                itemCount: 10,
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemBuilder: (context, index) => ComingSoonContainer(),
              )
            ],
          ),
        ),
      ),
    );
  }
}
