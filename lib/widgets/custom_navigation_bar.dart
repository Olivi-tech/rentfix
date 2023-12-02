import 'package:flutter/material.dart';
import 'package:rent_fix/constants/constants.dart';

class CustomNavigationBar extends StatelessWidget {
  const CustomNavigationBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          backgroundColor: Colors.white,
          iconSize: 30.0,
          selectedItemColor: AppColors.teal,
          selectedLabelStyle: const TextStyle(color: Colors.amberAccent),
          unselectedItemColor: AppColors.teal,
          selectedFontSize: 12.0,
          unselectedFontSize: 12,
          currentIndex: 1,
          onTap: (value) {},
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Image.asset(AppImages.home),
              label: "Home",
            ),
            BottomNavigationBarItem(
              icon: Image.asset(AppImages.search),
              label: "Discover",
            ),
            const BottomNavigationBarItem(
              icon: Icon(Icons.notifications),
              label: "Activities",
            ),
            BottomNavigationBarItem(
              icon: Image.asset(AppImages.chat),
              label: "Chat",
            ),
            const BottomNavigationBarItem(
              icon: Icon(Icons.menu),
              label: "Menu",
            ),
          ]),
    );

    /*BottomNavigationBar(
      unselectedItemColor: Colors.black,
      unselectedLabelStyle: const TextStyle(color: Colors.black),
      selectedItemColor: AppColors.darkGreen,
      selectedLabelStyle: const TextStyle(color: AppColors.darkGreen),
      showSelectedLabels: true,
      items: <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Image.asset(AppImages.home),
          label: 'Home',
        ),
        BottomNavigationBarItem(
          icon: Image.asset(AppImages.search),
          label: 'Discover',
        ),
        const BottomNavigationBarItem(
          icon: Icon(
            Icons.notifications,
            color: AppColors.teal,
          ),
          label: 'Chats',
        ),
        BottomNavigationBarItem(
          icon: Image.asset(AppImages.search),
          label: 'Discover',
        ),
        BottomNavigationBarItem(
          icon: Image.asset(AppImages.search),
          label: 'Discover',
        ),
      ],
    );*/
  }
}
