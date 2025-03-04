import 'package:flutter/material.dart';
import 'package:movie_app/core/my_styles.dart';
import 'package:movie_app/core/spacing.dart';


class FilmPoster extends StatelessWidget {
  final String imagePath;
  final String title;
  const FilmPoster({super.key, required this.imagePath, required this.title});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Stack(
          alignment: Alignment.bottomCenter,
          children: [
            Container(
              width: 220,
              height: 320,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                image: DecorationImage(
                  image: AssetImage(imagePath),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Text(
                title,
                textAlign: TextAlign.center,
                style: MyStyles.title24White400.copyWith(fontWeight: FontWeight.bold),
              ),
          ],
        ),
        vSpace(30)
      ],
    );
  }
}