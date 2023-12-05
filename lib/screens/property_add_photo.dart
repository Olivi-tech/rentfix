import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:rent_fix/constants/constants.dart';
import 'package:rent_fix/widgets/widgets.dart';

class PropertyPhotos extends StatelessWidget {
  const PropertyPhotos({super.key});

  @override
  Widget build(BuildContext context) {
    final mq = MediaQuery.of(context).size;
    return Scaffold(
      appBar: const CustomAppBar(
        title: 'List Your Property',
        showSearchIcon: false,
      ),
      body: Padding(
        padding: const EdgeInsets.all(15),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          const CustomText(
            label: 'Add some photos of your house',
            size: FontSize.xMedium,
            weight: FontWeight.w600,
          ),
          const CustomSize(
            height: 20,
          ),
          const CustomText(
            label:
                'You are recommended to upload at least 5 photos. You can add more or make changes later.',
            color: AppColors.darkGreen,
            size: FontSize.xxMedium,
            weight: FontWeight.w500,
          ),
          const CustomSize(
            height: 50,
          ),
          CustomButton(
            width: mq.width,
            onPressed: () {},
            btnColor: AppColors.turquoise,
            borderColor: Colors.transparent,
            isChild: true,
            child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              SvgPicture.asset(
                AppImages.galleryIcon,
                colorFilter:
                    const ColorFilter.mode(AppColors.white, BlendMode.srcIn),
              ),
              const CustomSize(
                width: 5,
              ),
              const CustomText(
                label: 'Select from gallery',
                size: FontSize.small,
                weight: FontWeight.w600,
                color: AppColors.white,
              )
            ]),
          ),
          const CustomSize(
            height: 20,
          ),
          CustomButton(
            width: mq.width,
            onPressed: () {},
            btnColor: AppColors.white,
            borderColor: AppColors.black,
            isChild: true,
            child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              SvgPicture.asset(
                AppImages.camIcon,
                colorFilter:
                    const ColorFilter.mode(AppColors.black, BlendMode.srcIn),
              ),
              const CustomSize(
                width: 5,
              ),
              const CustomText(
                label: 'Use Camera',
                size: FontSize.small,
                weight: FontWeight.w600,
                color: AppColors.black,
              )
            ]),
          ),
        ]),
      ),
    );
  }
}