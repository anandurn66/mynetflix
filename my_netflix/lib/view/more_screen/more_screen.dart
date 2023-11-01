import 'package:flutter/material.dart';
import 'package:my_netflix/utils/color_constant/color_constant.dart';

class MoreScreen extends StatefulWidget {
  const MoreScreen({super.key});

  @override
  State<MoreScreen> createState() => _MoreScreenState();
}

class _MoreScreenState extends State<MoreScreen> {
  bool check = false;
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConstant.matBlack,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            height: 100,
            color: Colors.purple,
            child: Center(
              child: Container(
                color: Colors.amber,
                height: 100,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 4,
                  itemBuilder: (context, index) => SizedBox(
                    height: 100,
                    child: InkWell(
                      onTap: () {
                        currentIndex = index;
                        setState(() {});
                      },
                      child: currentIndex == index
                          ? Container(
                              width: 90,
                              height: 80,
                              padding: EdgeInsets.all(10),
                              color: currentIndex == index
                                  ? Colors.red
                                  : Colors.green,
                            )
                          : SizedBox(
                              height: 10,
                              child: Container(
                                width: 50,
                                padding: EdgeInsets.all(10),
                                height: 50,
                                color: currentIndex == index
                                    ? Colors.red
                                    : Colors.green,
                              ),
                            ),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
