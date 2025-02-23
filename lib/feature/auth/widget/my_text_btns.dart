import 'package:flutter/material.dart';
import 'package:movie_app/core/my_styles.dart';

class MyTextBtn extends StatelessWidget {
  final VoidCallback onTap;
  final String text;
  final Color color;
  final Color textColor;
  final double width;

  const MyTextBtn({
    super.key,
    required this.onTap,
    required this.text,
    required this.color,
    required this.textColor,
    this.width = 80,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        width: width,
        height: 35,
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(20),
        ),
        alignment: Alignment.center,
        child: Text(
          text,
          style: MyStyles.title24White400
              .copyWith(fontSize: 12, color: textColor),
        ),
      ),
    );
  }
}
