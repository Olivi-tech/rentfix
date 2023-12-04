import 'package:flutter/material.dart';
import 'package:rent_fix/constants/constants.dart';
import 'package:rent_fix/widgets/widgets.dart';

class DiscoverScreen extends StatelessWidget {
  const DiscoverScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final double height = MediaQuery.of(context).size.height;
    final double width = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColors.whiteTeal,
        bottomNavigationBar: const CustomNavigationBar(),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const CustomSize(
                height: 20,
              ),
              Row(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(15),
                    child: Image.asset(
                      AppImages.profileImage,
                      scale: 5,
                    ),
                  ),
                  const Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: 10,
                        ),
                        Text.rich(
                          TextSpan(
                            children: [
                              WidgetSpan(
                                  child: CustomSize(
                                width: 10,
                              )),
                              TextSpan(
                                text: 'Hi',
                                style: TextStyle(
                                  color: Color(0xFF35D5DA),
                                  fontSize: 16,
                                  fontFamily: 'Inter',
                                  fontWeight: FontWeight.w500,
                                  height: 0.10,
                                ),
                              ),
                              TextSpan(
                                text: ',\n',
                                style: TextStyle(
                                  color: Color(0xFFCDD9FF),
                                  fontSize: 16,
                                  fontFamily: 'Inter',
                                  fontWeight: FontWeight.w500,
                                  height: 0.10,
                                ),
                              ),
                              WidgetSpan(
                                  child: CustomSize(
                                height: 25,
                              )),
                              TextSpan(
                                text: 'Jacob Jones',
                                style: TextStyle(
                                  color: Color(0xFF242528),
                                  fontSize: 18,
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  CustomSize(
                    width: width * 0.26,
                  ),
                  ShapeContainer(
                    width: 48,
                    height: 48,
                    decoration: ShapeDecoration(
                      color: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(16),
                        side: const BorderSide(width: 1, color: AppColors.teal),
                      ),
                    ),
                    child: const Icon(
                      Icons.notifications_none_outlined,
                      color: AppColors.teal,
                    ),
                  )
                ],
              ),
              const CustomSize(
                height: 10,
              ),
              Row(
                children: [
                  const Text.rich(
                    TextSpan(
                      children: [
                        TextSpan(
                          text: 'Find\n',
                          style: TextStyle(
                            color: Color(0xFF242528),
                            fontSize: 30,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        TextSpan(
                          text: 'best place',
                          style: TextStyle(
                            color: Color(0xFF242528),
                            fontSize: 27,
                            fontWeight: FontWeight.w300,
                          ),
                        ),
                        WidgetSpan(
                            child: SizedBox(
                          width: 8,
                        )),
                        TextSpan(
                          text: 'nearby',
                          style: TextStyle(
                            color: Color(0xFF35D5DA),
                            fontSize: 27,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const CustomSize(
                    width: 10,
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: height * 0.06),
                    child: Image.asset(AppImages.cute),
                  )
                ],
              ),
              const CustomSize(
                height: 10,
              ),
              Row(
                children: [
                  const Expanded(
                    flex: 5,
                    child: CustomTextField(
                        iconData: Icons.search,
                        isBorder: true,
                        hintText: 'Search here',
                        fillColor: Colors.white),
                  ),
                  const CustomSize(
                    width: 10,
                  ),
                  Expanded(
                    flex: 1,
                    child: ShapeContainer(
                        height: 48,
                        decoration: ShapeDecoration(
                          color: Colors.white,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(16),
                            side: const BorderSide(
                                width: 1, color: AppColors.teal),
                          ),
                        ),
                        child: Image.asset(AppImages.eatingList)),
                  )
                ],
              ),
              const CustomSize(
                height: 15,
              ),
              const CustomText(
                label: '55 Listings',
                color: AppColors.black,
                size: FontSize.small,
                weight: FontWeight.w500,
              ),
              const CustomSize(
                height: 15,
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.only(bottom: 10),
                  child: ListView.builder(
                    shrinkWrap: true,
                    itemCount: 5,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.only(bottom: 8),
                        child: PropertyContainer(
                          height: 310,
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SizedBox(
                                  height: 180,
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(10),
                                    child: Image.asset(
                                      AppImages.sofaSet,
                                      fit: BoxFit.fitHeight,
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 10),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      const CustomSize(
                                        height: 10,
                                      ),
                                      const CustomText(
                                        label: 'Jonas House Stock Park Road',
                                        color: AppColors.black,
                                        size: FontSize.xMedium,
                                        weight: FontWeight.w600,
                                      ),
                                      const CustomSize(
                                        height: 5,
                                      ),
                                      const Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text.rich(
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
                                          CustomText(
                                            label: 'Available by: 28/11/2023',
                                            color: AppColors.black,
                                            size: FontSize.small,
                                            weight: FontWeight.w300,
                                          )
                                        ],
                                      ),
                                      const CustomSize(
                                        height: 10,
                                      ),
                                      Row(
                                        children: [
                                          Image.asset(AppImages.bed),
                                          const CustomSize(
                                            width: 5,
                                          ),
                                          const CustomText(
                                            label: '3',
                                            color: AppColors.turquoise,
                                            size: FontSize.small,
                                            weight: FontWeight.w500,
                                          ),
                                          const CustomSize(
                                            width: 15,
                                          ),
                                          Image.asset(AppImages.sofa),
                                          const CustomSize(
                                            width: 5,
                                          ),
                                          const CustomText(
                                            label: '1',
                                            color: AppColors.turquoise,
                                            size: FontSize.small,
                                            weight: FontWeight.w500,
                                          ),
                                          const CustomSize(
                                            width: 15,
                                          ),
                                          Image.asset(AppImages.bath),
                                          const CustomSize(
                                            width: 5,
                                          ),
                                          const CustomText(
                                            label: '2',
                                            color: AppColors.turquoise,
                                            size: FontSize.small,
                                            weight: FontWeight.w500,
                                          ),
                                          const CustomSize(
                                            width: 15,
                                          ),
                                          Image.asset(AppImages.tv),
                                          const CustomSize(
                                            width: 5,
                                          ),
                                          const CustomText(
                                            label: '1',
                                            color: AppColors.turquoise,
                                            size: FontSize.small,
                                            weight: FontWeight.w500,
                                          ),
                                          const CustomSize(
                                            width: 15,
                                          ),
                                          Image.asset(AppImages.area),
                                          const CustomSize(
                                            width: 5,
                                          ),
                                          const CustomText(
                                            label: '3120 sqft',
                                            color: AppColors.turquoise,
                                            size: FontSize.small,
                                            weight: FontWeight.w500,
                                          )
                                        ],
                                      ),
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      );
                    },
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
