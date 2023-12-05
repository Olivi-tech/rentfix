import 'package:flutter/material.dart';
import 'package:rent_fix/constants/constants.dart';
import 'package:rent_fix/widgets/widgets.dart';

class ListingDetails extends StatelessWidget {
  const ListingDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: const CustomNavigationBar(),
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
                            child: Image.asset(
                              AppImages.sofaSet,
                              fit: BoxFit.fitHeight,
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
              Row(
                children: [
                  Image.asset(
                    AppImages.bed,
                    color: AppColors.darkGreen,
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
                  Image.asset(AppImages.sofa, color: AppColors.darkGreen),
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
                  Image.asset(AppImages.bath, color: AppColors.darkGreen),
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
                  Image.asset(AppImages.tv, color: AppColors.darkGreen),
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
                  Image.asset(AppImages.area, color: AppColors.darkGreen),
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
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  _columnWidget('Area', '3120 sqft'),
                  Padding(
                    padding: const EdgeInsets.only(right: 30),
                    child: _columnWidget('Condition', 'Fully Furnished'),
                  ),
                ],
              ),
              const CustomSize(
                height: 15,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  _columnWidget('PropertyType', 'condo'),
                  Padding(
                    padding: const EdgeInsets.only(right: 30),
                    child: _columnWidget('RentalType', 'Room'),
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
                decoration: BoxDecoration(
                    color: Colors.amber,
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(color: AppColors.turquoise)),
                child: Image.asset(
                  AppImages.map,
                  fit: BoxFit.fill,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                width: 380,
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
                      Image.asset(AppImages.youngMen),
                      const Text.rich(
                        TextSpan(
                          children: [
                            TextSpan(
                              text: 'Shakil Awan\n',
                              style: TextStyle(
                                color: Color(0xFF242528),
                                fontSize: 18,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                            WidgetSpan(
                                child: CustomSize(
                              height: 5,
                            )),
                            TextSpan(
                              text: 'Owner',
                              style: TextStyle(
                                color: Color(0xFF90A0B3),
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        width: 15,
                      ),
                      ShapeContainer(
                        width: 48,
                        height: 48,
                        decoration: ShapeDecoration(
                          color: const Color(0xFF7C9BFF),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(45),
                          ),
                        ),
                        child: Image.asset(
                          AppImages.chat,
                          color: Colors.white,
                        ),
                      ),
                      Container(
                        width: 48,
                        height: 48,
                        decoration: ShapeDecoration(
                          color: const Color(0xFF2CC86E),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(45),
                          ),
                        ),
                        child: Image.asset(AppImages.line),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              CustomButton(
                borderColor: Colors.transparent,
                text: 'Make Offer',
                textColor: Colors.white,
                btnColor: AppColors.turquoise,
                onPressed: () {},
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
