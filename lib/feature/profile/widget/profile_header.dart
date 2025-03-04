import 'package:flutter/material.dart';
import 'package:movie_app/core/my_images.dart';
import 'package:movie_app/core/my_styles.dart';
import 'package:movie_app/core/my_text.dart';
import 'package:movie_app/core/spacing.dart';

class ProfileHeader extends StatelessWidget {
  const ProfileHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: SizedBox(
            height: 250,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(MyImages.profilePic),
                hSpace(20),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      MyText.profile,
                      style: MyStyles.title24White700.copyWith(fontSize: 18),
                    ),
                    vSpace(20),
                    Row(
                      children: [
                        Text(
                          '${MyText.friends} :54',
                          style:
                              MyStyles.title24White400.copyWith(fontSize: 13),
                        ),
                        hSpace(20),
                        Text(
                          '${MyText.watched} :187',
                          style:
                              MyStyles.title24White400.copyWith(fontSize: 13),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Text(
                          '${MyText.following} :26',
                          style:
                              MyStyles.title24White400.copyWith(fontSize: 13),
                        ),
                        hSpace(20),
                        Text(
                          '${MyText.followers} :56',
                          style:
                              MyStyles.title24White400.copyWith(fontSize: 13),
                        ),
                      ],
                    ),
                    vSpace(20),
                  ],
                )
              ],
            ),
          ),
        ),
        Image.asset(MyImages.angryMen),
      ],
    );
  }
}