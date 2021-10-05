
import 'package:flutter/material.dart';

class SliderDot extends StatelessWidget {
  bool isActive;
  SliderDot(this.isActive);

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: Duration(milliseconds: 300),
      margin: EdgeInsets.symmetric(horizontal: 5),
      width: isActive ? 5 : 0,
      height: isActive ? 5 : 0,
      decoration: BoxDecoration(
        color: isActive ? Colors.orangeAccent : Colors.white54,
        borderRadius: BorderRadius.all(
          Radius.circular(5),
        ),
      ),
    );
  }
}