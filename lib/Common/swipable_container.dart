import 'package:flutter/material.dart';

class SwipableContainer extends StatelessWidget {
  final String imagePath;
  const SwipableContainer({
    super.key,
    required this.imagePath,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(
              imagePath,
            ),
          ),
        ),
        height: 430,
        width: 290,
      ),
    );
  }
}
