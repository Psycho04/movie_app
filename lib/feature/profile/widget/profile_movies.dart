import 'package:flutter/material.dart';
import 'package:movie_app/core/my_colors.dart';
import 'package:movie_app/core/my_images.dart';
import 'package:movie_app/core/my_text.dart';
import 'package:movie_app/core/spacing.dart';
import 'package:movie_app/feature/home/widget/film_info.dart';

class ProfileMovies extends StatelessWidget {
  const ProfileMovies({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(vertical: 50),
      decoration: BoxDecoration(
        color: MyColors.secondaryColor,
        borderRadius: BorderRadius.circular(40),
      ),
      child: Column(
        children: [
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              FilmInfo(
                filmPoster: MyImages.strangerThings,
                filmYear: MyText.usa2016,
                filmName: MyText.strangerThings,
                imdbRating: '86.0 / 100',
                filmGenre1: MyText.action,
                filmGenre2: MyText.adventure,
                filmGenre3: MyText.horror,
              ),
              FilmInfo(
                filmPoster: MyImages.batMan,
                filmYear: MyText.usa2005,
                filmName: MyText.batmanBegins,
                imdbRating: '82.0 / 100',
                filmGenre1: MyText.action,
                filmGenre2: MyText.adventure,
              ),
              FilmInfo(
                filmPoster: MyImages.spiderMan,
                filmYear: MyText.usa2018,
                filmName: MyText.spiderMan,
                imdbRating: '84.0 / 100',
                filmGenre1: MyText.action,
                filmGenre2: MyText.adventure,
                filmGenre3: MyText.horror,
              ),
              FilmInfo(
                filmPoster: MyImages.strangerThings,
                filmYear: MyText.usa2016,
                filmName: MyText.strangerThings,
                imdbRating: '86.0 / 100',
                filmGenre1: MyText.action,
                filmGenre2: MyText.adventure,
              ),
            ],
          ),
          vSpace(20),
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              FilmInfo(
                filmPoster: MyImages.strangerThings,
                filmYear: MyText.usa2016,
                filmName: MyText.strangerThings,
                imdbRating: '86.0 / 100',
                filmGenre1: MyText.action,
                filmGenre2: MyText.adventure,
                filmGenre3: MyText.horror,
              ),
              FilmInfo(
                filmPoster: MyImages.batMan,
                filmYear: MyText.usa2005,
                filmName: MyText.batmanBegins,
                imdbRating: '82.0 / 100',
                filmGenre1: MyText.action,
                filmGenre2: MyText.adventure,
              ),
              FilmInfo(
                filmPoster: MyImages.spiderMan,
                filmYear: MyText.usa2018,
                filmName: MyText.spiderMan,
                imdbRating: '84.0 / 100',
                filmGenre1: MyText.action,
                filmGenre2: MyText.adventure,
                filmGenre3: MyText.horror,
              ),
              FilmInfo(
                filmPoster: MyImages.strangerThings,
                filmYear: MyText.usa2016,
                filmName: MyText.strangerThings,
                imdbRating: '86.0 / 100',
                filmGenre1: MyText.action,
                filmGenre2: MyText.adventure,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
