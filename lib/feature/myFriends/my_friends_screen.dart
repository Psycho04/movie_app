import 'package:flutter/material.dart';
import 'package:movie_app/core/movie_app_bar.dart';
import 'package:movie_app/core/my_colors.dart';
import 'package:movie_app/core/my_styles.dart';
import 'package:movie_app/core/my_text.dart';
import 'package:movie_app/core/spacing.dart';
import 'package:movie_app/feature/myFriends/widget/my_friends_grid.dart';

class MyFriendsScreen extends StatelessWidget {
  const MyFriendsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.primaryColor,
      appBar: const MovieAppBar(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            vSpace(50),
            Center(
              child: Text(
                MyText.myFriends,
                style: MyStyles.title24White700.copyWith(fontSize: 28),
              ),
            ),
            vSpace(50),
            Container(
                margin: const EdgeInsets.symmetric(horizontal: 30),
                width: double.infinity,
                height: 1250,
                decoration: BoxDecoration(
                    color: MyColors.secondaryColor,
                    borderRadius: BorderRadius.circular(30)),
                child: const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 50),
                  child: MyFriendsGrid(),
                )),
            vSpace(50),
          ],
        ),
      ),
    );
  }
}