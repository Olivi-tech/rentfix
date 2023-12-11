import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:rent_fix/constants/constants.dart';
import 'package:rent_fix/widgets/widgets.dart';

class ListingDetails extends StatelessWidget {
  const ListingDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(
        title: 'Listing Details',
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const CustomSize(
                height: 10,
              ),
              Stack(
                alignment: Alignment.bottomRight,
                children: [
                  Expanded(
                      child: SizedBox(
                          height: 220,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(20),
                            child: SizedBox(
                              width: double.infinity,
                              child: Image.asset(
                                AppImages.sofaSet,
                                fit: BoxFit.fill,
                              ),
                            ),
                          ))),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 15, vertical: 15),
                    child: ShapeContainer(
                      width: 51,
                      height: 20,
                      decoration: ShapeDecoration(
                        color: Colors.white.withOpacity(0.8),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                      ),
                      child: const Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          CustomText(
                            label: '1 of 12',
                            color: AppColors.darkGreen,
                            size: FontSize.xsmall,
                            weight: FontWeight.w400,
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
              const CustomSize(
                height: 10,
              ),
              Row(
                children: [
                  ShapeContainer(
                    width: 70,
                    height: 27,
                    decoration: ShapeDecoration(
                      color: AppColors.paleAqua,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                    child: const Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        CustomText(
                          label: 'Condo',
                          color: AppColors.darkGreen,
                          size: FontSize.small,
                          weight: FontWeight.w500,
                        ),
                      ],
                    ),
                  ),
                  const CustomSize(
                    height: 10,
                  ),
                  ShapeContainer(
                    width: 70,
                    height: 27,
                    decoration: ShapeDecoration(
                      color: AppColors.paleAqua,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                    child: const Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        CustomText(
                          label: 'Room',
                          color: AppColors.darkGreen,
                          size: FontSize.small,
                          weight: FontWeight.w500,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              const CustomSize(
                height: 10,
              ),
              const CustomText(
                label: 'Jonas House Stock Park Road',
                color: AppColors.black,
                size: 23,
                weight: FontWeight.w600,
              ),
              const CustomSize(
                height: 2,
              ),
              const CustomSize(
                height: 5,
              ),
              const Text.rich(
                TextSpan(
                  children: [
                    TextSpan(
                      text: '\$350',
                      style: TextStyle(
                        color: Color(0xFF35D5DA),
                        fontSize: 24,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    TextSpan(
                      text: ' ',
                      style: TextStyle(
                        color: Color(0xFFB8CBCB),
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        height: 0,
                      ),
                    ),
                    TextSpan(
                      text: '/month',
                      style: TextStyle(
                        color: Color(0xFF35D5DA),
                        fontSize: 12,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
              ),
              const CustomSize(
                height: 5,
              ),
              Row(
                children: [
                  SvgPicture.asset(
                    AppImages.svBed,
                    colorFilter: const ColorFilter.mode(
                        AppColors.darkGreen, BlendMode.srcIn),
                  ),
                  const CustomSize(
                    width: 10,
                  ),
                  const CustomText(
                    label: '3',
                    color: AppColors.darkGreen,
                    size: FontSize.small,
                    weight: FontWeight.w500,
                  ),
                  const CustomSize(
                    width: 20,
                  ),
                  SvgPicture.asset(
                    AppImages.svSofa,
                    colorFilter: const ColorFilter.mode(
                        AppColors.darkGreen, BlendMode.srcIn),
                  ),
                  const CustomSize(
                    width: 8,
                  ),
                  const CustomText(
                    label: '1',
                    color: AppColors.darkGreen,
                    size: FontSize.small,
                    weight: FontWeight.w500,
                  ),
                  const CustomSize(
                    width: 20,
                  ),
                  SvgPicture.asset(
                    AppImages.svTrash,
                    colorFilter: const ColorFilter.mode(
                        AppColors.darkGreen, BlendMode.srcIn),
                  ),
                  const CustomSize(
                    width: 8,
                  ),
                  const CustomText(
                    label: '2',
                    color: AppColors.darkGreen,
                    size: FontSize.small,
                    weight: FontWeight.w500,
                  ),
                  const CustomSize(
                    width: 20,
                  ),
                  SvgPicture.asset(
                    AppImages.svTv,
                    colorFilter: const ColorFilter.mode(
                        AppColors.darkGreen, BlendMode.srcIn),
                  ),
                  const CustomSize(
                    width: 8,
                  ),
                  const CustomText(
                    label: '1',
                    color: AppColors.darkGreen,
                    size: FontSize.small,
                    weight: FontWeight.w500,
                  ),
                  const CustomSize(
                    width: 20,
                  ),
                  SvgPicture.asset(
                    AppImages.svArea,
                    colorFilter: const ColorFilter.mode(
                        AppColors.darkGreen, BlendMode.srcIn),
                  ),
                  const CustomSize(
                    width: 8,
                  ),
                  const CustomText(
                    label: '3120 sqft',
                    color: AppColors.darkGreen,
                    size: FontSize.small,
                    weight: FontWeight.w500,
                  )
                ],
              ),
              const CustomSize(
                height: 10,
              ),
              CustomButton(
                width: MediaQuery.of(context).size.width,
                isChild: true,
                borderColor: Colors.transparent,
                btnColor: AppColors.paleAqua,
                onPressed: () {},
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.calendar_month_outlined,
                      color: AppColors.darkGreen,
                    ),
                    CustomSize(
                      width: 10,
                    ),
                    CustomText(
                      label: 'Available by: 28/11/2023',
                      color: AppColors.darkGreen,
                      size: FontSize.xxMedium,
                      weight: FontWeight.w500,
                    )
                  ],
                ),
              ),
              const CustomSize(
                height: 10,
              ),
              const CustomDivider(
                color: AppColors.turquoise,
              ),
              const CustomSize(
                height: 10,
              ),
              const CustomText(
                label: 'Details',
                color: AppColors.black,
                size: FontSize.large,
                weight: FontWeight.w600,
              ),
              const CustomSize(
                height: 10,
              ),
              Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      _columnWidget('Area', '3120 sqft'),
                      const CustomSize(
                        height: 15,
                      ),
                      _columnWidget('PropertyType', 'condo'),
                    ],
                  ),
                  const Spacer(),
                  Padding(
                    padding: const EdgeInsets.only(right: 10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        _columnWidget('Condition', 'Fully Furnished'),
                        const CustomSize(
                          height: 15,
                        ),
                        _columnWidget('RentalType', 'Room'),
                      ],
                    ),
                  ),
                ],
              ),
              const CustomSize(
                height: 15,
              ),
              _columnWidget('Listed Date', 'Ready to move'),
              const CustomSize(
                height: 10,
              ),
              const CustomDivider(
                color: AppColors.turquoise,
              ),
              const CustomSize(
                height: 5,
              ),
              const CustomText(
                label: 'About this place',
                color: Colors.black,
                size: 20,
                weight: FontWeight.w600,
              ),
              const CustomSize(
                height: 5,
              ),
              RichText(
                text: const TextSpan(
                  style: TextStyle(color: Colors.black, fontSize: 36),
                  children: <TextSpan>[
                    TextSpan(
                        text:
                            'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commo do consequat cupidatat non proident, sunt....',
                        style: TextStyle(
                          color: Color(0xFF8FA0B3),
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                        )),
                    TextSpan(
                        text: 'Read more',
                        style: TextStyle(
                          color: Color(0xFF4B75F9),
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                        )),
                  ],
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const CustomDivider(
                color: AppColors.turquoise,
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                height: 160,
                width: double.infinity,
                decoration: BoxDecoration(
                    color: Colors.amber,
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(
                      color: AppColors.turquoise,
                    )),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(18),
                  child: Image.asset(
                    AppImages.map,
                    fit: BoxFit.fill,
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                width: double.infinity,
                height: 88,
                decoration: ShapeDecoration(
                  color: AppColors.paleAqua,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const CircleAvatar(
                        backgroundImage: AssetImage(AppImages.youngMen),
                        radius: 30,
                      ),
                      const Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          CustomText(
                            label: 'Shakil Awan',
                            color: AppColors.black,
                            size: FontSize.medium,
                            weight: FontWeight.w700,
                          ),
                          CustomText(
                            label: 'Owner',
                            size: FontSize.xMedium,
                            color: AppColors.lightGrey,
                            weight: FontWeight.w500,
                          ),
                        ],
                      ),
                      const SizedBox(
                        width: 15,
                      ),
                      ShapeContainer(
                        width: 48,
                        height: 48,
                        decoration: ShapeDecoration(
                          color: AppColors.blueshade,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(45),
                          ),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(10),
                          child: SvgPicture.asset(
                            AppImages.svChat,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      /* Container(
                        width: 48,
                        height: 48,
                        decoration: ShapeDecoration(
                          color: AppColors.greens,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(45),
                          ),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(10),
                          child: SvgPicture.asset(
                            AppImages.svLine,
                          ),
                        ),
                      ),*/
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              CustomButton(
                width: MediaQuery.of(context).size.width,
                borderColor: Colors.transparent,
                text: 'Make Offer',
                textColor: Colors.white,
                btnColor: AppColors.turquoise,
                onPressed: () {
                  Navigator.of(context).pushNamed(AppRoutes.offer);
                },
              ),
              const SizedBox(
                height: 20,
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _columnWidget(String? firstText, String secondText) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CustomText(
          label: '$firstText',
          color: const Color(0xFF105456),
          size: 14,
          weight: FontWeight.w500,
        ),
        const CustomSize(
          height: 5,
        ),
        CustomText(
          label: secondText,
          color: const Color(0xFF8FA0B3),
          size: 14,
          weight: FontWeight.w500,
        ),
      ],
    );
  }
}
