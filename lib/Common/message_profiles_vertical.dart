import 'package:flutter/material.dart';

class VerticalProfile extends StatelessWidget {
  final String imagePath;
  final String title;
  final String text;
  final String time;
  String? messagecount;
  final Color color;

  VerticalProfile({
    super.key,
    required this.imagePath,
    required this.title,
    required this.text,
    required this.time,
    this.messagecount,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 56,
      width: 295,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              CircleAvatar(
                radius: 29,
                child: Image.asset(imagePath),
              ),
              SizedBox(
                width: 7,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text(
                    title,
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Sk-Modernist-Regular',
                    ),
                  ),
                  Text(text),
                ],
              ),
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text(time),
              CircleAvatar(
                child: Text(
                  messagecount!,
                  style: TextStyle(
                    fontSize: 12,
                    fontFamily: 'Sk-Modernist-Regular',
                  ),
                ),
                radius: 9,
                backgroundColor: color,
              )
            ],
          )
        ],
      ),
    );
  }
}
