import 'package:flutter/material.dart';
import 'package:movie_app/core/my_images.dart';
import 'package:movie_app/core/my_styles.dart';
import 'package:movie_app/core/my_text.dart';
import 'package:movie_app/core/spacing.dart';
import 'package:movie_app/feature/widget/text_field_with_name.dart';

class AuthScreen extends StatelessWidget {
  const AuthScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0xff141412),
        appBar: AppBar(
          backgroundColor: const Color(0xff141412),
          title: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: Column(
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
          ),
        ),
        body: SingleChildScrollView(
            child: Container(
          width: double.infinity,
          height: 670,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            image: const DecorationImage(
              image: AssetImage(MyImages.background),
              fit: BoxFit.cover,
            ),
          ),
          child: Stack(
            children: [
              Center(
                child: Container(
                  width: 400,
                  height: 580,
                  decoration: BoxDecoration(
                    color: const Color(0xff141412),
                    borderRadius: BorderRadius.circular(40),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 30, vertical: 30),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          MyText.hiThere,
                          style:
                              MyStyles.title24White400.copyWith(fontSize: 18),
                        ),
                        Text(
                          MyText.howAbout,
                          style: MyStyles.title24White400.copyWith(
                              fontSize: 12, color: const Color(0xff969696)),
                        ),
                        vSpace(20),
                        TextFieldWithName(
                          text: MyText.emailAddress,
                          validator: (value) {
                            if (value!.isEmpty) {
                              return 'Email is required';
                            }
                            return null;
                          },
                          controller: TextEditingController(),
                        ),
                        TextFieldWithName(
                          text: MyText.password,
                          validator: (value) {
                            if (value!.isEmpty) {
                              return 'Password is required';
                            }
                            return null;
                          },
                          controller: TextEditingController(),
                          obscureText: true,
                        ),
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
        )));
  }
}
