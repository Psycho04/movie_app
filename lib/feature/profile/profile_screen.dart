import 'package:flutter/material.dart';
import 'package:movie_app/core/movie_app_bar.dart';
import 'package:movie_app/core/my_colors.dart';
import 'package:movie_app/core/spacing.dart';
import 'package:movie_app/feature/profile/widget/profile_header.dart';
import 'package:movie_app/feature/profile/widget/profile_menu.dart';
import 'package:movie_app/feature/profile/widget/profile_movies.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.primaryColor,
      appBar: const MovieAppBar(),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30),
        child: SingleChildScrollView(
          child: Column(
            children: [
              const Stack(
                alignment: AlignmentDirectional.bottomCenter,
                children: [
                  ProfileHeader(),
                  ProfileMenu()
                ],
              ),
              vSpace(50),
              Column(
                children: [
                  vSpace(30),
                  const ProfileMovies(),
                ],
              ),
              vSpace(50)
            ],
          ),
        ),
      ),
    );
  }
}