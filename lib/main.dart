import 'package:flutter/material.dart';
import 'package:rent_fix/constants/app_colors.dart';
import 'package:rent_fix/screens/profile_screen.dart';

void main() {
  runApp(const RentFixApp());
}

class RentFixApp extends StatelessWidget {
  const RentFixApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
        scaffoldBackgroundColor: AppColors.paleSkyBlue,
        appBarTheme: const AppBarTheme(
          backgroundColor: AppColors.white,
        ),
      ),
      home: const ProfileScreen(),
    );
  }
}
