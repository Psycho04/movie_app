import 'package:flutter/material.dart';
import 'package:movie_app/core/movie_app_bar.dart';
import 'package:movie_app/core/my_colors.dart';
import 'package:movie_app/core/my_images.dart';
import 'package:movie_app/core/my_styles.dart';
import 'package:movie_app/core/my_text.dart';
import 'package:movie_app/core/spacing.dart';
import 'package:movie_app/feature/auth/widget/my_text_btns.dart';

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
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 50),
                  child: GridView.builder(
                    physics: const NeverScrollableScrollPhysics(),
                    itemCount: 18,
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                            childAspectRatio: 0.90,
                            crossAxisSpacing: 10,
                            mainAxisSpacing: 10,
                            mainAxisExtent: 200,
                            crossAxisCount: 3),
                    itemBuilder: (context, index) {
                      return Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            children: [
                              Image.asset(MyImages.myFriends),
                              hSpace(20),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const Text(
                                    MyText.patrickBatman,
                                    style: MyStyles.title24White400,
                                  ),
                                  vSpace(20),
                                  Row(
                                    children: [
                                      Text(
                                        '${MyText.friends} :54',
                                        style: MyStyles.title24White400
                                            .copyWith(fontSize: 16),
                                      ),
                                      hSpace(20),
                                      Text(
                                        '${MyText.watched} :187',
                                        style: MyStyles.title24White400
                                            .copyWith(fontSize: 16),
                                      ),
                                    ],
                                  ),
                                  vSpace(20),
                                  MyTextBtn(
                                      onTap: () {},
                                      text: MyText.add,
                                      color: Colors.blue,
                                      textColor: Colors.white,
                                      radius: 20)
                                ],
                              )
                            ],
                          ));
                    },
                  ),
                )),
            vSpace(50),
          ],
        ),
      ),
    );
  }
}