import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:rent_fix/constants/app_images.dart';
import 'package:rent_fix/constants/constants.dart';
import 'package:rent_fix/widgets/widgets.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final mq = MediaQuery.of(context).size;
    return Scaffold(
      appBar: const CustomAppBar(
        title: 'Settings',
        showSearchIcon: false,
      ),
      body: Stack(children: [
        Padding(
          padding: const EdgeInsets.only(left: 20, right: 20),
          child: Column(
            children: [
              const CustomSize(
                height: 40,
              ),
              CustomContainer(
                width: mq.width * 0.38,
                height: mq.height * 0.18,
                shapeDecoration: BoxDecoration(
                  color: AppColors.white,
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(
                    color: AppColors.turquoiseBlue,
                    width: 1,
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(6),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: const Image(
                      image: AssetImage(AppImages.profileImage),
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
              ),
              const CustomSize(
                height: 60,
              ),
              CustomListTile(
                leading: SvgPicture.asset(
                  AppImages.privacyIcon,
                ),
                trailing: const Padding(
                  padding: EdgeInsets.only(bottom: 5),
                  child: Icon(
                    Icons.keyboard_arrow_right_outlined,
                    color: AppColors.darkTeal,
                  ),
                ),
                title: const CustomText(
                  weight: FontWeight.w500,
                  size: FontSize.xxMedium,
                  color: AppColors.darkTeal,
                  label: 'Privacy Policy',
                ),
                onTap: () async {},
              ),
              const CustomSize(
                height: 10,
              ),
              CustomListTile(
                leading: SvgPicture.asset(
                  AppImages.supportIcon,
                ),
                trailing: const Padding(
                  padding: EdgeInsets.only(bottom: 5),
                  child: Icon(
                    Icons.keyboard_arrow_right_outlined,
                    color: AppColors.darkTeal,
                  ),
                ),
                title: const CustomText(
                  weight: FontWeight.w500,
                  size: FontSize.xxMedium,
                  color: AppColors.darkTeal,
                  label: 'Terms & Condition',
                ),
                onTap: () async {},
              ),
              const CustomSize(
                height: 10,
              ),
              CustomListTile(
                leading: SvgPicture.asset(
                  AppImages.thumnbsupIcon,
                ),
                trailing: const Padding(
                  padding: EdgeInsets.only(bottom: 5),
                  child: Icon(
                    Icons.keyboard_arrow_right_outlined,
                    color: AppColors.darkTeal,
                  ),
                ),
                title: const CustomText(
                  weight: FontWeight.w500,
                  size: FontSize.xxMedium,
                  color: AppColors.darkTeal,
                  label: 'Acknowledgment',
                ),
                onTap: () async {},
              ),
              const CustomSize(
                height: 10,
              ),
              CustomListTile(
                leading: SvgPicture.asset(
                  AppImages.logoutIcon,
                ),
                trailing: const Padding(
                  padding: EdgeInsets.only(bottom: 5),
                  child: Icon(
                    Icons.keyboard_arrow_right_outlined,
                    color: AppColors.coralPink,
                  ),
                ),
                title: const CustomText(
                  weight: FontWeight.w500,
                  size: FontSize.xxMedium,
                  label: 'Logout',
                  color: AppColors.coralPink,
                ),
                onTap: () async {},
              ),
            ],
          ),
        ),
        Positioned(
          top: 150,
          left: 225,
          child: CustomContainer(
            width: mq.width * 0.12,
            height: mq.height * 0.05,
            shapeDecoration: BoxDecoration(
              color: AppColors.white,
              borderRadius: BorderRadius.circular(8),
              border: Border.all(
                color: AppColors.turquoiseBlue,
                width: 1,
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.all(8),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(8),
                child: SvgPicture.asset(
                  AppImages.editProfileIcon,
                  width: 14,
                  height: 14,
                ),
              ),
            ),
          ),
        ),
      ]),
    );
  }
}