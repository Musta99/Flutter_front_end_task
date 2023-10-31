import 'package:flutter/material.dart';

class CustomCard extends StatefulWidget {
  final String title;
  final String image;

  CustomCard({
    Key? key,
    required this.title,
    required this.image,
  }) : super(key: key);

  @override
  State<CustomCard> createState() => _CustomCardState();
}

class _CustomCardState extends State<CustomCard> {
  late bool _isTapped = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          _isTapped = !_isTapped;
        });
      },
      child: SizedBox(
        width: 140,
        height: 45,
        child: Card(
          elevation: 15,
          shadowColor: _isTapped == true ? Color(0xffe94057) : Colors.white,
          color: _isTapped == true ? Color(0xffe94057) : Colors.white,
          shape: RoundedRectangleBorder(
            side: BorderSide(
              color: _isTapped == true ? Color(0xffe94057) : Color(0xffE8E6EA),
            ),
            borderRadius: BorderRadius.circular(15),
          ),
          child: Container(
            margin: EdgeInsets.fromLTRB(14, 0, 0, 0),
            child: Row(
              children: [
                Image.asset(
                  widget.image,
                  height: 19,
                  width: 19,
                  color: _isTapped == true ? Colors.white : Colors.black,
                ),
                SizedBox(
                  width: 8,
                ),
                Text(
                  widget.title,
                  style: TextStyle(
                    fontSize: 14,
                    color: _isTapped == true ? Colors.white : Colors.black,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
