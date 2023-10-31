import 'package:flutter/material.dart';
import 'package:test_project/Common/bottom_nav_bar.dart';
import 'package:test_project/Common/common_button.dart';
import 'package:test_project/Common/swipable_container.dart';

class SwipeOption extends StatefulWidget {
  const SwipeOption({super.key});

  @override
  State<SwipeOption> createState() => _SwipeOptionState();
}

bool _isTapped = false;

class _SwipeOptionState extends State<SwipeOption> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            padding: EdgeInsets.fromLTRB(44, 44, 40, 0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CommonButton(
                        image: "Images/left-arrow(1).png",
                      ),
                      Column(
                        children: [
                          Text(
                            "Discover",
                            style: TextStyle(
                              fontSize: 26,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text("Chicago, II"),
                        ],
                      ),
                      CommonButton(
                        image: "Images/setting-config.png",
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 25,
                ),
                // next part starts here

                Container(
                  height: 450,
                  width: 303,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("Images/profiles/photo main(5).png"),
                    ),
                  ),
                  child: Stack(
                    children: [
                      Positioned(
                        top: 367,
                        child: Container(
                          decoration: BoxDecoration(
                              color: Colors.black,
                              borderRadius: BorderRadius.only(
                                bottomLeft: Radius.circular(15),
                                bottomRight: Radius.circular(15),
                                topLeft: Radius.circular(0),
                                topRight: Radius.circular(0),
                              )),
                          width: 300,
                          height: 83,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Text(
                                "Camila Snow, 23",
                                style: TextStyle(
                                  fontSize: 24,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                ),
                              ),
                              Text(
                                "Marketer",
                                style: TextStyle(
                                  fontSize: 14,
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),

                SizedBox(
                  height: 15,
                ),
                // next part starts here

                Container(
                  width: 295,
                  height: 99,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Material(
                        borderRadius: BorderRadius.all(Radius.circular(39)),
                        elevation: 3,
                        child: Container(
                          child: Image.asset("Images/close-small.png"),
                          height: 78,
                          width: 78,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                          ),
                        ),
                      ),
                      Material(
                        borderRadius: BorderRadius.all(Radius.circular(49.5)),
                        elevation: 10,
                        shadowColor: Color(0xffe94057),
                        child: Container(
                          child: Image.asset("Images/Vector.png"),
                          height: 99,
                          width: 99,
                          decoration: BoxDecoration(
                              shape: BoxShape.circle, color: Color(0xffe94057)),
                        ),
                      ),
                      Material(
                        borderRadius: BorderRadius.all(Radius.circular(39)),
                        elevation: 3,
                        child: Container(
                          child: Image.asset("Images/star.png"),
                          height: 78,
                          width: 78,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 38,
          ),
          Container(
            height: 49,
            width: 375,
            child: BottomNavBar(),
          ),
          Container(
            color: Color(0xffF3F3F3),
            height: 30,
            width: 375,
            child: Image.asset("Images/Home Indicator.png"),
          )
        ],
      ),
    );
  }
}
