import 'package:flutter/material.dart';

class InterestContainer extends StatefulWidget {
  final String title;

  InterestContainer({
    super.key,
    required this.title,
  });

  @override
  State<InterestContainer> createState() => _InterestContainerState();
}

class _InterestContainerState extends State<InterestContainer> {
  bool _isSelected = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          _isSelected = !_isSelected;
        });
      },
      child: Container(
        height: 32,
        width: 92,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          border: Border.all(
            color: _isSelected == true ? Color(0xffe94057) : Color(0xffE8E6EA),
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Visibility(
              visible: _isSelected,
              child: Image.asset("Images/done-all.png"),
            ),
            Center(
                child: Text(
              widget.title,
              style: TextStyle(
                fontFamily: 'Sk-Modernist-Regular',
              ),
            )),
          ],
        ),
      ),
    );
  }
}
