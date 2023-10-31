import 'package:flutter/material.dart';
import 'package:test_project/Common/bottom_nav_bar.dart';
import 'package:test_project/Common/common_button.dart';
import 'package:test_project/Common/message_profiles_vertical.dart';

class Messages extends StatelessWidget {
  const Messages({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: 44,
            padding: EdgeInsets.fromLTRB(21, 14, 17.33, 0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "4:20",
                  style: TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Row(
                  children: [
                    Icon(
                      Icons.network_cell_outlined,
                      size: 17,
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Icon(
                      Icons.wifi,
                      size: 17,
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Icon(
                      Icons.battery_0_bar,
                      size: 17,
                    )
                  ],
                )
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.fromLTRB(40, 0, 0, 0),
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.fromLTRB(0, 0, 40, 0),
                  child: Container(
                    height: 52,
                    width: 291,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Messages",
                          style: TextStyle(
                              fontSize: 28,
                              fontWeight: FontWeight.bold,
                              fontFamily: 'Sk-Modernist-Regular'),
                        ),
                        CommonButton(
                          image: "Images/setting-config.png",
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(0, 0, 40, 0),
                  child: Container(
                    height: 48,
                    width: 295,
                    child: TextField(
                      decoration: InputDecoration(
                        prefixIcon: Icon(Icons.search),
                        hintText: "Search",
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15),
                          borderSide: BorderSide(),
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  height: 128,
                  width: 390,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Activities",
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'Sk-Modernist-Regular'),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          children: [
                            MessageProfiles(
                              name: "You",
                              imagePath: "Images/profiles/you.png",
                            ),
                            SizedBox(
                              width: 15,
                            ),
                            MessageProfiles(
                              name: "Emma",
                              imagePath: "Images/profiles/emma.png",
                            ),
                            SizedBox(
                              width: 15,
                            ),
                            MessageProfiles(
                              name: "Ava",
                              imagePath: "Images/profiles/ava.png",
                            ),
                            SizedBox(
                              width: 15,
                            ),
                            MessageProfiles(
                              name: "Sophia",
                              imagePath: "Images/profiles/sophia.png",
                            ),
                            SizedBox(
                              width: 15,
                            ),
                            MessageProfiles(
                              name: "Emilie",
                              imagePath: "Images/profiles/emilie.png",
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                // next part starts here
                Padding(
                  padding: EdgeInsets.fromLTRB(0, 0, 40, 0),
                  child: Container(
                    height: 433,
                    width: 295,
                    child: SingleChildScrollView(
                      scrollDirection: Axis.vertical,
                      child: Column(
                        children: [
                          VerticalProfile(
                            imagePath: "Images/profiles/emilie.png",
                            title: "Emilie",
                            text: "Sticker",
                            time: "23 min",
                            messagecount: "1",
                            color: Color(0xffe94057),
                          ),
                          SizedBox(
                            height: 16,
                          ),
                          VerticalProfile(
                            imagePath: "Images/profiles/abigail.png",
                            title: "Abigail",
                            text: "Typing",
                            time: "27 min",
                            messagecount: "2",
                            color: Color(0xffe94057),
                          ),
                          SizedBox(
                            height: 16,
                          ),
                          VerticalProfile(
                            imagePath: "Images/profiles/elizabeth.png",
                            title: "Elizabeth",
                            text: "Ok, See you then.",
                            time: "33 min",
                            messagecount: "",
                            color: Colors.white,
                          ),
                          SizedBox(
                            height: 16,
                          ),
                          VerticalProfile(
                            imagePath: "Images/profiles/penelope.png",
                            title: "Penelope",
                            text: "you:Hey Whats upp!",
                            time: "50 min",
                            messagecount: "",
                            color: Colors.white,
                          ),
                          SizedBox(
                            height: 16,
                          ),
                          VerticalProfile(
                            imagePath: "Images/profiles/chloe.png",
                            title: "Chloe",
                            text: "you:Hello how are you",
                            time: "55 min",
                            messagecount: "",
                            color: Colors.white,
                          ),
                          SizedBox(
                            height: 16,
                          ),
                          VerticalProfile(
                            imagePath: "Images/profiles/grace.png",
                            title: "Grace",
                            text: "Great, I will write",
                            time: "1 hour",
                            messagecount: "",
                            color: Colors.white,
                          ),
                          SizedBox(
                            height: 16,
                          ),
                          VerticalProfile(
                            imagePath: "Images/profiles/grace.png",
                            title: "Grace",
                            text: "Great, I will write",
                            time: "1 hour",
                            messagecount: "",
                            color: Colors.white,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                //Next part starts here
              ],
            ),
          ),
          Container(
            height: 49,
            width: 375,
            child: BottomNavBar(),
          ),
          Container(
            color: Color(0xffF3F3F3),
            height: 17,
            width: 375,
            child: Image.asset("Images/Home Indicator.png"),
          )
        ],
      ),
    );
  }
}
