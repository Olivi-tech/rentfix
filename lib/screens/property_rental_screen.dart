import 'package:flutter/material.dart';
import 'package:rent_fix/constants/app_colors.dart';
import 'package:rent_fix/constants/fonts_size.dart';
import 'package:rent_fix/widgets/custom_appbar.dart';
import 'package:rent_fix/widgets/custom_container.dart';
import 'package:rent_fix/widgets/custom_size.dart';
import 'package:rent_fix/widgets/custom_text.dart';

class RentalAgreement extends StatelessWidget {
  const RentalAgreement({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: CustomAppBar(
        title: 'List Your Property',
        showSearchIcon: false,
      ),
      body: Padding(
        padding: EdgeInsets.all(15),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          CustomText(
            label: 'What will be rental agreement be for?  ',
            size: FontSize.xMedium,
            weight: FontWeight.w600,
          ),
          CustomSize(
            height: 10,
          ),
          PropertyContainer(
              child: Column(
            children: [
              CustomText(
                label: 'Entire Unit',
                size: FontSize.xMedium,
                color: AppColors.darkGreen,
                weight: FontWeight.w700,
              ),
              CustomText(
                label: 'You are renting the entire unit',
                size: FontSize.small,
                color: AppColors.darkGreen,
                weight: FontWeight.w400,
              ),
            ],
          )),
          CustomSize(
            height: 10,
          ),
          PropertyContainer(
              child: Column(
            children: [
              CustomText(
                label: 'Room',
                color: AppColors.darkGreen,
                size: FontSize.xMedium,
                weight: FontWeight.w700,
              ),
              CustomText(
                label: 'Shared Bathrooms',
                size: FontSize.small,
                color: AppColors.darkGreen,
                weight: FontWeight.w400,
              ),
            ],
          )),
          CustomSize(
            height: 10,
          ),
          PropertyContainer(
              child: Column(
            children: [
              CustomText(
                label: 'Ensuite',
                color: AppColors.darkGreen,
                size: FontSize.xMedium,
                weight: FontWeight.w700,
              ),
              CustomText(
                label: 'Private Bathrooms',
                size: FontSize.small,
                color: AppColors.darkGreen,
                weight: FontWeight.w400,
              ),
            ],
          )),
          CustomSize(
            height: 10,
          ),
          PropertyContainer(
              child: Column(
            children: [
              CustomText(
                label: 'Studio',
                color: AppColors.darkGreen,
                size: FontSize.xMedium,
                weight: FontWeight.w700,
              ),
              CustomText(
                label: 'Private Kitchenette with attached bathroom',
                size: FontSize.small,
                color: AppColors.darkGreen,
                weight: FontWeight.w400,
              ),
            ],
          )),
        ]),
      ),
    );
  }
}
