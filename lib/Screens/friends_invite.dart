import 'package:flutter/material.dart';
import 'package:test_project/Common/bottom_button.dart';
import 'package:test_project/Screens/user_profile.dart';

class InviteFriends extends StatelessWidget {
  const InviteFriends({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.fromLTRB(40, 56, 40, 0),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  height: 24,
                  width: 33,
                  child: Text(
                    "Skip",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Color(0xffe94057),
                    ),
                  ),
                )
              ],
            ),
            SizedBox(
              height: 88,
            ),
            Container(
              height: 240,
              width: 240,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("Images/people1.png"),
                ),
              ),
            ),
            SizedBox(
              height: 64,
            ),
            Container(
              height: 88,
              width: 295,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text(
                    "Search friends",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 24,
                        fontFamily: 'Sk-Modernist-Regular'),
                  ),
                  Text(
                    "You can find friends from your contact lists to get connected",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontSize: 14, fontFamily: 'Sk-Modernist-Regular'),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 148,
            ),
            BottomButton(
              title: "Access to a contact list",
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => UserProfile(),
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
