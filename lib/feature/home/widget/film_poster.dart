import 'package:flutter/material.dart';
import 'package:movie_app/core/my_styles.dart';


class FilmPoster extends StatelessWidget {
  final String imagePath;
  final String title;
  const FilmPoster({super.key, required this.imagePath, required this.title});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: 220,
          height: 320,
          padding: const EdgeInsets.only(top: 250),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            image: DecorationImage(
              image: AssetImage(imagePath),
              fit: BoxFit.cover,
            ),
          ),
          child: Text(
            title,
            textAlign: TextAlign.center,
            style: MyStyles.title24White400.copyWith(fontWeight: FontWeight.bold),
          ),
        ),
      ],
    );
  }
}
