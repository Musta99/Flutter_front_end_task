import 'package:flutter/material.dart';

class BottomButton extends StatelessWidget {
  final String title;
  final VoidCallback onTap;

  const BottomButton({
    Key? key,
    required this.title,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          color: Color(0xffe94057),
          borderRadius: BorderRadius.all(
            Radius.circular(15),
          ),
        ),
        height: 56,
        width: 295,
        child: Center(
          child: Text(
            title,
            style: TextStyle(
                color: Colors.white,
                fontSize: 16,
                fontFamily: 'Sk-Modernist-Regular'),
          ),
        ),
      ),
    );
  }
}
