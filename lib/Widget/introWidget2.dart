import 'package:flutter/material.dart';

class OutBoardingIndicator extends StatelessWidget {
  final double marginEnd;
  final bool selected;

  OutBoardingIndicator({this.marginEnd = 0, required this.selected});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsetsDirectional.only(end: marginEnd),
      width: 8,
      height: 8,
      decoration: BoxDecoration(
        color: selected ? Color(0xFF6AA03B) :  Colors.grey,
        borderRadius: BorderRadius.circular(5),
      ),
    );
  }
}
