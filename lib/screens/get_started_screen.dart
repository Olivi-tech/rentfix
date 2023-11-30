import 'package:flutter/material.dart';
import 'package:rent_fix/constants/app_colors.dart';
import 'package:rent_fix/constants/app_images.dart';
import 'package:rent_fix/constants/constants.dart';
import 'package:rent_fix/widgets/widgets.dart';

class GetStartedScreen extends StatelessWidget {
  const GetStartedScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColors.splashBackGround,
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const CustomSize(
                height: 20,
              ),
              Image.asset(AppImages.splashLogo),
              const CustomSize(
                height: 10,
              ),
              const CustomText(
                label: 'Find Your \nPerfect Place',
                color: AppColors.white,
                size: FontSize.xxxLarge,
                weight: FontWeight.w900,
              ),
              Container(
                width: 161,
                height: 50,
                decoration: ShapeDecoration(
                  color: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(40),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
    /////
  }
}
