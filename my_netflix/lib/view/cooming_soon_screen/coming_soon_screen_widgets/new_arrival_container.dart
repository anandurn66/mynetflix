import 'package:flutter/material.dart';
import 'package:my_netflix/utils/color_constant/color_constant.dart';

class NewArrivalContainer extends StatelessWidget {
  final String title;
  final String subTitle;
  final String date;

  const NewArrivalContainer(
      {super.key,
      required this.title,
      required this.subTitle,
      required this.date});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
      color: ColorConstant.containerGrey,
      child: Row(
        children: [
          Container(
            height: 55,
            width: 115,
            color: Colors.amber,
          ),
          SizedBox(
            width: 20,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: TextStyle(color: ColorConstant.textColor, fontSize: 13),
              ),
              SizedBox(
                height: 5,
              ),
              Text(
                subTitle,
                style: TextStyle(color: ColorConstant.textColor, fontSize: 13),
              ),
              Text(
                date,
                style: TextStyle(color: ColorConstant.textColor, fontSize: 10),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
