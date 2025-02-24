import 'package:flutter/material.dart';
import 'package:movie_app/core/my_colors.dart';
import 'package:movie_app/core/my_images.dart';
import 'package:movie_app/core/my_styles.dart';
import 'package:movie_app/core/my_text.dart';
import 'package:movie_app/core/spacing.dart';
import 'package:movie_app/feature/home/widget/film_poster.dart';

class MyListBody extends StatelessWidget {
  const MyListBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          vSpace(50),
          Center(
            child: Text(
              MyText.myList,
              style: MyStyles.title24White700.copyWith(fontSize: 28),
            ),
          ),
          vSpace(50),
          Container(
              margin: const EdgeInsets.symmetric(horizontal: 30),
              width: double.infinity,
              height: 1200,
              decoration: BoxDecoration(
                  color: MyColors.secondaryColor,
                  borderRadius: BorderRadius.circular(30)),
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      FilmPoster(
                          imagePath: MyImages.dunkirk,
                          title: MyText.myFavorite),
                      FilmPoster(
                          imagePath: MyImages.dunkirk,
                          title: MyText.myFavorite),
                      FilmPoster(
                          imagePath: MyImages.dunkirk,
                          title: MyText.myFavorite),
                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      FilmPoster(
                          imagePath: MyImages.dunkirk, title: MyText.iWant),
                      FilmPoster(
                          imagePath: MyImages.dunkirk, title: MyText.iWant),
                      FilmPoster(
                          imagePath: MyImages.dunkirk, title: MyText.iWant),
                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      FilmPoster(
                          imagePath: MyImages.dunkirk,
                          title: MyText.myFavoriteActor),
                      FilmPoster(
                          imagePath: MyImages.dunkirk,
                          title: MyText.myFavoriteActor),
                      FilmPoster(
                          imagePath: MyImages.dunkirk,
                          title: MyText.myFavoriteActor),
                    ],
                  ),
                ],
              )),
          vSpace(50)
        ],
      ),
    );
  }
}
