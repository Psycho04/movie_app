import 'package:flutter/material.dart';
import 'package:movie_app/core/my_text.dart';
import 'package:movie_app/core/spacing.dart';

class ProfileMenu extends StatefulWidget {
  const ProfileMenu({super.key});

  @override
  State<ProfileMenu> createState() => _ProfileMenuState();
}

class _ProfileMenuState extends State<ProfileMenu> {

  int selectedIndex = 0;
  final List<Map<String, dynamic>> tabs = [
    {'title': MyText.all, 'count': 3448},
    {'title': MyText.tvShows, 'count': 28},
    {'title': MyText.movies, 'count': 250},
    {'title': MyText.watchList, 'count': 120},
    {'title': MyText.likes, 'count': 3050},
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 100,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        gradient: const LinearGradient(
          end: Alignment.center,
          colors: [Color(0xff272729), Colors.transparent],
        ),
      ),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
        ),
        padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 20),
        child: Row(
          children: List.generate(tabs.length, (index) {
            return GestureDetector(
              onTap: () {
                setState(() {
                  selectedIndex = index;
                });
              },
              child: Container(
                padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 8),
                decoration: BoxDecoration(
                  color:
                      selectedIndex == index ? Colors.red : Colors.transparent,
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    hSpace(100),
                    Text(
                      tabs[index]['title'],
                      style: const TextStyle(
                        decoration: TextDecoration.none,
                        color: Colors.white,
                        fontWeight: FontWeight.w500,
                        fontSize: 14,
                      ),
                    ),
                    vSpace(20),
                    Text(
                      tabs[index]['count'].toString(),
                      style: const TextStyle(
                        decoration: TextDecoration.none,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                    ),
                  ],
                ),
              ),
            );
          }),
        ),
      ),
    );
  }
}
