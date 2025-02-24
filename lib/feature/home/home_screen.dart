import 'package:flutter/material.dart';
import 'package:movie_app/core/my_colors.dart';
import 'package:movie_app/core/my_images.dart';
import 'package:movie_app/core/my_styles.dart';
import 'package:movie_app/core/my_text.dart';
import 'package:movie_app/core/spacing.dart';
import 'package:movie_app/feature/home/widget/film_avatars.dart';
import 'package:movie_app/feature/home/widget/film_info_widget.dart';
import 'package:movie_app/feature/home/widget/film_poster.dart';
import 'package:movie_app/feature/home/widget/home_appbar.dart';
import 'package:movie_app/feature/home/widget/home_most_watched.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.primaryColor,
      appBar: const HomeAppBar(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const Padding(
              padding: EdgeInsets.symmetric(vertical: 20),
              child: Text(
                MyText.mostWatched,
                style: MyStyles.title24White400,
              ),
            ),
            const HomeMostWatched(),
            vSpace(50),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(MyText.tvShows,
                    style: MyStyles.title24White400.copyWith(fontSize: 14)),
                hSpace(40),
                Text(MyText.movies,
                    style: MyStyles.title24White400.copyWith(fontSize: 14)),
                hSpace(40),
                Text(MyText.newPopular,
                    style: MyStyles.title24White400.copyWith(fontSize: 14)),
                hSpace(40),
                Text(MyText.myList,
                    style: MyStyles.title24White400.copyWith(fontSize: 14)),
                hSpace(40),
                Text(MyText.browseByLanguage,
                    style: MyStyles.title24White400.copyWith(fontSize: 14)),
                hSpace(40),
              ],
            ),
            vSpace(50),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 60),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  FilmPoster(
                    imagePath: MyImages.dunkirk,
                    title: MyText.topMovies,
                  ),
                  FilmPoster(
                    imagePath: MyImages.dunkirk,
                    title: MyText.topSeries,
                  ),
                  FilmPoster(
                    imagePath: MyImages.spiderMan,
                    title: MyText.topActors,
                  ),
                ],
              ),
            ),
            vSpace(80),
            const FilmInfoWidget(
              text: MyText.newRelease,
            ),
            vSpace(30),
            const FilmInfoWidget(text: MyText.pickedForYou),
            vSpace(80),
            const FilmAvatars(),
            vSpace(50),
            dSpace(),
            vSpace(20)
          ],
        ),
      ),
    );
  }
}