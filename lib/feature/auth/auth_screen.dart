import 'package:flutter/material.dart';
import 'package:movie_app/core/my_images.dart';
import 'package:movie_app/core/my_styles.dart';
import 'package:movie_app/core/my_text.dart';
import 'package:movie_app/core/spacing.dart';
import 'package:movie_app/feature/auth/widget/my_text_btns.dart';
import 'package:movie_app/feature/auth/widget/social_btn.dart';
import 'package:movie_app/feature/auth/widget/text_field_with_name.dart';

class AuthScreen extends StatefulWidget {
  const AuthScreen({super.key});

  @override
  State<AuthScreen> createState() => _AuthScreenState();
}

class _AuthScreenState extends State<AuthScreen> {
  bool isChecked = false;

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
                  height: 600,
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
                        InkWell(
                          onTap: () {},
                          child: Text(
                            MyText.forgotYourPass,
                            style: MyStyles.title24White400.copyWith(
                                fontSize: 12,
                                decoration: TextDecoration.underline,
                                decorationColor: Colors.white),
                          ),
                        ),
                        vSpace(10),
                        Row(
                          children: [
                            Checkbox(
                              activeColor: Colors.red,
                              value: isChecked,
                              onChanged: (value) {
                                setState(() {
                                  isChecked = value!;
                                });
                              },
                            ),
                            Text(
                              MyText.rememberMe,
                              style: MyStyles.title24White400
                                  .copyWith(fontSize: 12),
                            ),
                            const Spacer(),
                            MyTextBtn(
                                onTap: () {},
                                text: MyText.login,
                                color: Colors.red,
                                textColor: Colors.white)
                          ],
                        ),
                        Center(
                          child: Text(
                            MyText.or,
                            style:
                                MyStyles.title24White400.copyWith(fontSize: 12),
                          ),
                        ),
                        dSpace(),
                        vSpace(10),
                        const SocialBtn(
                            color: Color(0xff1877F2),
                            textColor: Colors.white,
                            imagePath: MyImages.facebookLogo),
                        vSpace(10),
                        const SocialBtn(
                            color: Colors.black,
                            textColor: Colors.white,
                            imagePath: MyImages.appleLogo),
                        vSpace(5),
                        dSpace(),
                        Center(
                          child: Text(
                            MyText.dontHaveAccount,
                            style:
                                MyStyles.title24White400.copyWith(fontSize: 12),
                          ),
                        ),
                        vSpace(10),
                        MyTextBtn(
                          onTap: () {},
                          text: MyText.signupFor,
                          color: Colors.red,
                          textColor: Colors.white,
                          width: double.infinity,
                        ),
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}