import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:rent_fix/constants/constants.dart';
import 'package:rent_fix/screens/screens.dart';
import 'package:rent_fix/widgets/widgets.dart';

import '../providers/bottom_navigation_provider.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  late BottomNavigationProvider _bottomNavigationProvider;

  @override
  void initState() {
    super.initState();
    _bottomNavigationProvider =
        Provider.of<BottomNavigationProvider>(context, listen: false);
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<BottomNavigationProvider>(
      builder: (context, indexValue, child) => Scaffold(
        body: Center(
          child: _widgetOptions.elementAt(indexValue.selectedIndex),
        ),
        bottomNavigationBar: BottomNavigationBar(
          showSelectedLabels: true,
          showUnselectedLabels: true,
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Padding(
                padding: const EdgeInsets.only(bottom: 10.0, top: 12),
                child: Image.asset(
                  AppImages.home,
                  color: indexValue.selectedIndex == 0
                      ? AppColors.darkGreen
                      : AppColors.pastelblue,
                ),
              ),
              label: "Home",
            ),
            BottomNavigationBarItem(
              icon: Padding(
                padding: const EdgeInsets.only(bottom: 10.0, top: 12),
                child: Image.asset(
                  AppImages.search,
                  color: indexValue.selectedIndex == 1
                      ? AppColors.darkGreen
                      : AppColors.pastelblue,
                ),
              ),
              label: "Discover",
            ),
            const BottomNavigationBarItem(
              icon: Padding(
                padding: EdgeInsets.only(bottom: 10.0, top: 12),
                child: Icon(Icons.notifications),
              ),
              label: "Activities",
            ),
            BottomNavigationBarItem(
              icon: Padding(
                padding: const EdgeInsets.only(bottom: 10.0, top: 12),
                child: Image.asset(
                  AppImages.chat,
                  color: indexValue.selectedIndex == 3
                      ? AppColors.darkGreen
                      : AppColors.pastelblue,
                ),
              ),
              label: "Chat",
            ),
            BottomNavigationBarItem(
              icon: PopupMenuButton(
                icon: const Icon(Icons.menu),
                itemBuilder: (_) => <PopupMenuItem<String>>[
                  PopupMenuItem<String>(
                      value: 'My Profile',
                      onTap: () {
                        Navigator.of(context).pushNamed(AppRoutes.profile);
                      },
                      child: const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          CustomText(
                            label: 'My Profile',
                            size: FontSize.xxMedium,
                            color: AppColors.darkGreen,
                          ),
                          Icon(
                            Icons.person,
                            color: AppColors.darkGreen,
                          ),
                        ],
                      )),
                  PopupMenuItem<String>(
                      value: 'Settings',
                      onTap: () {
                        Navigator.of(context).pushNamed(AppRoutes.settings);
                      },
                      child: const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          CustomText(
                            label: 'Settings',
                            size: FontSize.xxMedium,
                            color: AppColors.darkGreen,
                          ),
                          Icon(
                            Icons.settings,
                            color: AppColors.darkGreen,
                          ),
                        ],
                      )),
                  const PopupMenuItem<String>(
                      value: 'Get Help',
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          CustomText(
                            label: 'Get Help',
                            size: FontSize.xxMedium,
                            color: AppColors.darkGreen,
                          ),
                          Icon(
                            Icons.help,
                            color: AppColors.darkGreen,
                          ),
                        ],
                      )),
                ],
              ),
              label: "Menu",
            ),
          ],
          currentIndex: indexValue.selectedIndex,
          selectedItemColor: AppColors.darkGreen,
          unselectedItemColor: AppColors.pastelblue,
          onTap: _onItemTapped,
        ),
      ),
    );
  }

  static const List<Widget> _widgetOptions = <Widget>[
    HomeScreen(),
    DiscoverScreen(),
    ActivitiesScreen(),
    MessageScreen(),
  ];

  void _onItemTapped(int index) {
    _bottomNavigationProvider.selectedIndex = index;
  }
}
