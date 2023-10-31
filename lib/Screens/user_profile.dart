import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:test_project/Common/common_button.dart';
import 'package:test_project/Common/interest_container.dart';
import 'package:test_project/Screens/messages.dart';

class UserProfile extends StatelessWidget {
  const UserProfile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            top: 0,
            child: Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage(
                    "Images/image 1.png",
                  ),
                ),
              ),
              height: 415,
              width: 400,
            ),
          ),
          Positioned(
            top: 386,
            bottom: 0,
            right: 0,
            left: 0,
            child: Container(
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30),
                    bottomLeft: Radius.circular(0),
                    bottomRight: Radius.circular(0),
                  )),
              width: 375,
              child: ListView(
                children: [
                  Container(
                    margin: EdgeInsets.fromLTRB(40.1, 39.66, 40.9, 0),
                    width: 295,
                    height: 57,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Text(
                              "Jessica Parker,23",
                              style: TextStyle(
                                fontSize: 24,
                                fontWeight: FontWeight.bold,
                                fontFamily: 'Sk-Modernist-Regular',
                              ),
                            ),
                            Text("Proffessional model")
                          ],
                        ),
                        GestureDetector(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => Messages(),
                                ),
                              );
                            },
                            child: CommonButton(image: "Images/send.png")),
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.fromLTRB(40.1, 29.66, 40.9, 0),
                    width: 295,
                    height: 50,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Text(
                              "Location",
                              style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                  fontFamily: 'Sk-Modernist-Regular'),
                            ),
                            Text("Chicago, IL United States")
                          ],
                        ),
                        Container(
                          height: 34,
                          width: 61,
                          decoration: BoxDecoration(
                            color: Color.fromARGB(255, 250, 199, 195),
                            borderRadius: BorderRadius.circular(7),
                          ),
                          child: Row(
                            children: [
                              Icon(
                                Icons.location_on_outlined,
                                color: Color(0xffe94057),
                              ),
                              Text(
                                "1 km",
                                style: TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.bold,
                                    color: Color(0xffe94057),
                                    fontFamily: 'Sk-Modernist-Regular'),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.fromLTRB(40.1, 29.66, 40.9, 0),
                    height: 118,
                    width: 295,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "About",
                          style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              fontFamily: 'Sk-Modernist-Regular'),
                        ),
                        Text(
                          "My name is Jessica parker and I enjoy meeting new people and finding ways to help them have an uplifting experience. I enjoy reading..",
                          style: TextStyle(
                              fontSize: 14, fontFamily: 'Sk-Modernist-Regular'),
                        ),
                        Text(
                          "Read more",
                          style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                              color: Color(0xffe94057),
                              fontFamily: 'Sk-Modernist-Regular'),
                        )
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.fromLTRB(40.1, 29.66, 40.9, 0),
                    width: 295,
                    height: 108,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Text(
                          "Interests",
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.bold),
                        ),
                        Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                InterestContainer(
                                  title: "Travelling",
                                ),
                                InterestContainer(
                                  title: "Books",
                                ),
                                InterestContainer(
                                  title: "Music",
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Row(
                              children: [
                                InterestContainer(
                                  title: "Dancing",
                                ),
                                SizedBox(
                                  width: 18,
                                ),
                                InterestContainer(
                                  title: "Modelling",
                                ),
                              ],
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.fromLTRB(40.1, 29.66, 40.9, 0),
                    width: 295,
                    height: 356,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Gallery",
                              style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                  fontFamily: 'Sk-Modernist-Regular'),
                            ),
                            Text(
                              "See all",
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.bold,
                                color: Color(0xffe94057),
                                fontFamily: 'Sk-Modernist-Regular',
                              ),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(5),
                              child: Image.asset(
                                "Images/profiles/photo main.png",
                                height: 190,
                                width: 142,
                              ),
                            ),
                            ClipRRect(
                              borderRadius: BorderRadius.circular(5),
                              child: Image.asset(
                                "Images/profiles/photo main(1).png",
                                height: 190,
                                width: 143,
                              ),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(5),
                              child: Image.asset(
                                "Images/profiles/photo main(2).png",
                                height: 122,
                                width: 92,
                              ),
                            ),
                            ClipRRect(
                              borderRadius: BorderRadius.circular(5),
                              child: Image.asset(
                                "Images/profiles/photo main(3).png",
                                height: 122,
                                width: 92,
                              ),
                            ),
                            ClipRRect(
                              borderRadius: BorderRadius.circular(5),
                              child: Image.asset(
                                "Images/profiles/photo main(4).png",
                                height: 122,
                                width: 92,
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 40,
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            top: 337.05,
            left: 40.4,
            child: Container(
              width: 295,
              height: 99,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Material(
                    borderRadius: BorderRadius.all(Radius.circular(39)),
                    elevation: 8,
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
                    elevation: 15,
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
                    elevation: 8,
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
          ),
        ],
      ),
    );
  }
}
