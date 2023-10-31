import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:test_project/Common/bottom_button.dart';
import 'package:test_project/Common/card_services.dart';
import 'package:test_project/Screens/friends_invite.dart';

class Passions extends StatefulWidget {
  const Passions({Key? key}) : super(key: key);

  @override
  State<Passions> createState() => _PassionsState();
}

class _PassionsState extends State<Passions> {
  late bool _isTapped = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 40, vertical: 38),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  decoration: BoxDecoration(
                    border: Border.all(color: Color(0xffdbdbdc)),
                    borderRadius: BorderRadius.all(
                      Radius.circular(15),
                    ),
                  ),
                  height: 52,
                  width: 52,
                  child: Image.asset(
                    "Images/left-arrow(1).png",
                    width: 8.0,
                    height: 14.0,
                  ),
                ),
                Text(
                  "Skip",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Sk-Modernist-Regular',
                    color: Color(0xffe94057),
                  ),
                )
              ],
            ),
            SizedBox(
              height: 32,
            ),
            Container(
              width: 295,
              height: 93,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Your Interests",
                    style: TextStyle(
                        fontSize: 34,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Sk-Modernist-Regular'),
                  ),
                  Text(
                    "Select a few of your interests and let everyone know what you're passionate about.",
                    style: TextStyle(
                        fontSize: 14, fontFamily: 'Sk-Modernist-Regular'),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 32,
            ),
            Container(
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CustomCard(
                        title: "Photography",
                        image: "Images/parachute.png",
                      ),
                      CustomCard(
                        title: "Shopping",
                        image: "Images/parachute.png",
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CustomCard(
                        title: "Karaoke",
                        image: "Images/voice.png",
                      ),
                      CustomCard(
                        title: "Yoga",
                        image: "Images/viencharts.png",
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CustomCard(
                        title: "Cooking",
                        image: "Images/noodles.png",
                      ),
                      CustomCard(
                        title: "Tennis",
                        image: "Images/tennis.png",
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CustomCard(
                        title: "Run",
                        image: "Images/sport.png",
                      ),
                      CustomCard(
                        title: "Swimming",
                        image: "Images/parachute.png",
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CustomCard(
                        title: "Art",
                        image: "Images/platte.png",
                      ),
                      CustomCard(
                        title: "Traveling",
                        image: "Images/outdoor.png",
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CustomCard(
                        title: "Extreme",
                        image: "Images/parachute.png",
                      ),
                      CustomCard(
                        title: "Music",
                        image: "Images/music.png",
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CustomCard(
                        title: "Drink",
                        image: "Images/goblet-full.png",
                      ),
                      CustomCard(
                        title: "Video games",
                        image: "Images/game-handle.png",
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 80,
            ),
            BottomButton(
              title: "Continue",
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => InviteFriends(),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
