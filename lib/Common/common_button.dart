import 'package:flutter/material.dart';

class CommonButton extends StatelessWidget {
  var image;

  CommonButton({
    super.key,
    required this.image,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: Color(0xffdbdbdc)),
        borderRadius: BorderRadius.all(
          Radius.circular(15),
        ),
      ),
      height: 52,
      width: 52,
      child: Image.asset(
        image,
        width: 8.0,
        height: 14.0,
      ),
    );
  }
}

class MessageProfiles extends StatelessWidget {
  final String name;
  final String imagePath;
  const MessageProfiles({
    super.key,
    required this.name,
    required this.imagePath,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          CircleAvatar(
            child: Image.asset(imagePath),
            radius: 29,
          ),
          SizedBox(
            height: 5,
          ),
          Text(
            name,
          ),
        ],
      ),
    );
  }
}
