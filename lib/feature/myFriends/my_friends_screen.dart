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
      body: Column(
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
              height: 1200,
              decoration: BoxDecoration(
                  color: MyColors.secondaryColor,
                  borderRadius: BorderRadius.circular(30)),
              child: GridView.builder(
                itemCount: 18,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3),
                itemBuilder: (context, index) {
                  return Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Image.asset(MyImages.myFriends),
                      hSpace(10),
                      Padding(
                        padding: const EdgeInsets.only(top: 25),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              MyText.patrickBatman,
                              style:
                                  TextStyle(color: Colors.white, fontSize: 15),
                            ),
                            vSpace(10),
                            Row(
                              children: [
                                const Text('${MyText.friends} : ${54}',
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 15)),
                                hSpace(20),
                                const Text('${MyText.watched} : ${176}',
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 15)),
                              ],
                            ),
                            vSpace(10),
                            MyTextBtn(
                              onTap: () {},
                              text: MyText.add,
                              color: Colors.blue,
                              textColor: Colors.white,
                              radius: 20,
                              width: 60,
                              height: 20,
                            )
                          ],
                        ),
                      ),
                    ],
                  );
                },
              )),
          vSpace(50),
        ],
      ),
    );
  }
}
