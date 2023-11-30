import 'package:flutter/material.dart';
import 'package:rent_fix/constants/app_colors.dart';
import 'package:rent_fix/constants/app_images.dart';

class GetStarted extends StatelessWidget {
  const GetStarted({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.splashBackGround,
      body: Column(
        children: [Image.asset(AppImages.splashLogo)],
      ),
    );
    /////
  }
}
