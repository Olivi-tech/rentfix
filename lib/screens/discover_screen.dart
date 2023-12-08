import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:rent_fix/constants/constants.dart';
import 'package:rent_fix/screens/filter_bottom_screen.dart';
import 'package:rent_fix/widgets/widgets.dart';

class DiscoverScreen extends StatelessWidget {
  const DiscoverScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // final double height = MediaQuery.of(context).size.height;
    final double width = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
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
                    child: Padding(
                      padding: EdgeInsets.only(left: 15, bottom: 10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            height: 10,
                          ),
                          Row(
                            children: [
                              CustomText(
                                label: 'Hi',
                                color: AppColors.turquoise,
                                size: FontSize.xMedium,
                                weight: FontWeight.w500,
                              ),
                              CustomText(
                                label: ',',
                                color: Color(0xFFCDD9FF),
                                size: FontSize.xMedium,
                                weight: FontWeight.w500,
                                height: 0.10,
                              ),
                            ],
                          ),
                          CustomText(
                            label: 'Jacob Jones',
                            color: AppColors.black,
                            size: FontSize.medium,
                            weight: FontWeight.w700,
                          ),
                        ],
                      ),
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
              const CustomText(
                label: 'Find',
                color: AppColors.black,
                size: 30,
                weight: FontWeight.w500,
              ),
              Row(
                children: [
                  const CustomText(
                    label: 'best place',
                    color: AppColors.black,
                    size: 27,
                    weight: FontWeight.w300,
                  ),
                  const CustomText(
                    label: ' nearby',
                    color: AppColors.turquoise,
                    size: 27,
                    weight: FontWeight.w700,
                  ),
                  const CustomSize(
                    width: 10,
                  ),
                  Image.asset(AppImages.cute)
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
                        height: 48,
                        iconData: Icons.search,
                        isBorder: true,
                        borderRadius: 15,
                        borderColor: AppColors.teal,
                        hintText: 'Search here',
                        fillColor: Colors.white),
                  ),
                  const CustomSize(
                    width: 10,
                  ),
                  Expanded(
                    flex: 1,
                    child: InkWell(
                      onTap: () {
                        showModalBottomSheet(
                          context: context,
                          isScrollControlled: true,
                          builder: (BuildContext context) {
                            return ClipRRect(
                              borderRadius: const BorderRadius.vertical(
                                  top: Radius.circular(30.0)),
                              child: Container(
                                color: AppColors.paleSkyBlue,
                                height:
                                    MediaQuery.of(context).size.height * 0.85,
                                child: const FilterBottomSheet(),
                              ),
                            );
                          },
                        );
                      },
                      child: ShapeContainer(
                          height: 46,
                          decoration: ShapeDecoration(
                            color: Colors.white,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15),
                              side: const BorderSide(
                                  width: 1, color: AppColors.teal),
                            ),
                          ),
                          child: Image.asset(AppImages.eatingList)),
                    ),
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
                        child: GestureDetector(
                          onTap: () {
                            Navigator.of(context)
                                .pushNamed(AppRoutes.listDetails);
                          },
                          child: PropertyContainers(
                            //  height: 310,
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  SizedBox(
                                      child: Stack(
                                    children: [
                                      ClipRRect(
                                        borderRadius: const BorderRadius.only(
                                          topLeft: Radius.circular(20),
                                          topRight: Radius.circular(20),
                                          bottomLeft: Radius.circular(5),
                                          bottomRight: Radius.circular(5),
                                        ),
                                        child: Image.asset(
                                          AppImages.sofaSet,
                                          fit: BoxFit.fitHeight,
                                        ),
                                      ),
                                      Positioned(
                                        top: 10,
                                        right: 10,
                                        child: Container(
                                          width: 68,
                                          height: 20,
                                          decoration: ShapeDecoration(
                                            color: AppColors.softAqua,
                                            shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(12),
                                            ),
                                          ),
                                          child: const Center(
                                            child: CustomText(
                                              label: 'Entire unit',
                                              color: AppColors.darkGreen,
                                              size: FontSize.xsmall,
                                              weight: FontWeight.w400,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  )),
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
                                                      fontWeight:
                                                          FontWeight.w700,
                                                    ),
                                                  ),
                                                  TextSpan(
                                                    text: ' ',
                                                    style: TextStyle(
                                                      color: Color(0xFFB8CBCB),
                                                      fontSize: 16,
                                                      fontWeight:
                                                          FontWeight.w500,
                                                      height: 0,
                                                    ),
                                                  ),
                                                  TextSpan(
                                                    text: '/month',
                                                    style: TextStyle(
                                                      color: Color(0xFF35D5DA),
                                                      fontSize: 12,
                                                      fontWeight:
                                                          FontWeight.w500,
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
                                        Padding(
                                          padding: const EdgeInsets.only(
                                              left: 5, bottom: 8),
                                          child: Row(
                                            children: [
                                              SvgPicture.asset(
                                                AppImages.svBed,
                                                colorFilter:
                                                    const ColorFilter.mode(
                                                        AppColors.turquoise,
                                                        BlendMode.srcIn),
                                                height: 12,
                                                width: 12,
                                              ),
                                              const CustomSize(
                                                width: 8,
                                              ),
                                              const CustomText(
                                                label: '3',
                                                color: AppColors.turquoise,
                                                size: FontSize.small,
                                                weight: FontWeight.w500,
                                              ),
                                              const CustomSize(
                                                width: 16,
                                              ),
                                              SvgPicture.asset(
                                                AppImages.svSofa,
                                                colorFilter:
                                                    const ColorFilter.mode(
                                                        AppColors.turquoise,
                                                        BlendMode.srcIn),
                                                height: 12,
                                                width: 12,
                                              ),
                                              const CustomSize(
                                                width: 8,
                                              ),
                                              const CustomText(
                                                label: '1',
                                                color: AppColors.turquoise,
                                                size: FontSize.small,
                                                weight: FontWeight.w500,
                                              ),
                                              const CustomSize(
                                                width: 16,
                                              ),
                                              SvgPicture.asset(
                                                AppImages.svTrash,
                                                colorFilter:
                                                    const ColorFilter.mode(
                                                        AppColors.turquoise,
                                                        BlendMode.srcIn),
                                                height: 15,
                                                width: 15,
                                              ),
                                              const CustomSize(
                                                width: 8,
                                              ),
                                              const CustomText(
                                                label: '2',
                                                color: AppColors.turquoise,
                                                size: FontSize.small,
                                                weight: FontWeight.w500,
                                              ),
                                              const CustomSize(
                                                width: 16,
                                              ),
                                              SvgPicture.asset(
                                                AppImages.svTv,
                                                colorFilter:
                                                    const ColorFilter.mode(
                                                        AppColors.turquoise,
                                                        BlendMode.srcIn),
                                                height: 15,
                                                width: 15,
                                              ),
                                              const CustomSize(
                                                width: 8,
                                              ),
                                              const CustomText(
                                                label: '1',
                                                color: AppColors.turquoise,
                                                size: FontSize.small,
                                                weight: FontWeight.w500,
                                              ),
                                              const CustomSize(
                                                width: 16,
                                              ),
                                              SvgPicture.asset(
                                                AppImages.svArea,
                                                colorFilter:
                                                    const ColorFilter.mode(
                                                        AppColors.turquoise,
                                                        BlendMode.srcIn),
                                                height: 15,
                                                width: 15,
                                              ),
                                              const CustomSize(
                                                width: 8,
                                              ),
                                              const CustomText(
                                                label: '3120 sqft',
                                                color: AppColors.turquoise,
                                                size: FontSize.small,
                                                weight: FontWeight.w500,
                                              )
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  )
                                ],
                              ),
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
