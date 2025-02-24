import 'package:flutter/material.dart';
import 'package:movie_app/core/movie_app_bar.dart';
import 'package:movie_app/core/my_colors.dart';
import 'package:movie_app/feature/myList/widget/my_list_body.dart';

class MyListScreen extends StatelessWidget {
  const MyListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        backgroundColor: MyColors.primaryColor,
        appBar: MovieAppBar(),
        body: MyListBody());
  }
}
