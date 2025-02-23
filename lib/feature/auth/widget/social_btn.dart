import 'package:flutter/material.dart';
import 'package:movie_app/core/my_styles.dart';
import 'package:movie_app/core/my_text.dart';
import 'package:movie_app/core/spacing.dart';

class SocialBtn extends StatelessWidget {
  final Color color;
  final Color textColor;
  final String imagePath;

  const SocialBtn({
    super.key, 
    required this.color, 
    required this.textColor,
    required this.imagePath
    });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 35,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ImageIcon(
            size: 20,
            AssetImage(imagePath),
            color: Colors.white,
          ),
          hSpace(5),
          Text(
            MyText.facebook,style: MyStyles.title24White400.copyWith(fontSize: 12),
          ),
        ],
      ),
    );
  }
}
