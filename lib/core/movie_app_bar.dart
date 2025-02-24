import 'package:flutter/material.dart';
import 'package:movie_app/core/my_colors.dart';
import 'package:movie_app/core/my_images.dart';
import 'package:movie_app/core/my_styles.dart';
import 'package:movie_app/core/my_text.dart';
import 'package:movie_app/core/spacing.dart';

class MovieAppBar extends StatelessWidget implements PreferredSizeWidget {
  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  const MovieAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: MyColors.primaryColor,
      title: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30),
        child: Row(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  MyText.mood,
                  style: MyStyles.title13Redw700,
                ),
                Text(
                  MyText.box,
                  style: MyStyles.title24White700.copyWith(fontSize: 20),
                ),
              ],
            ),
            hSpace(20),
            Text(
              MyText.home,
              style: MyStyles.title24White400.copyWith(fontSize: 13),
            ),
            hSpace(20),
            Text(
              MyText.suggest,
              style: MyStyles.title24White400.copyWith(fontSize: 13),
            ),
            hSpace(20),
            Text(
              MyText.myList,
              style: MyStyles.title24White400.copyWith(fontSize: 13),
            ),
            hSpace(20),
            Text(
              MyText.friends,
              style: MyStyles.title24White400.copyWith(fontSize: 13),
            ),
            const Spacer(),
            const Icon(
              Icons.search,
              color: Colors.white,
            ),
            hSpace(15),
            const CircleAvatar(
              backgroundImage: AssetImage(MyImages.profilePic),
            )
          ],
        ),
      ),
    );
  }
}