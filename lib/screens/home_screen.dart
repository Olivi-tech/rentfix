import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:rent_fix/constants/constants.dart';
import 'package:rent_fix/widgets/widgets.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const CustomSize(height: 20),
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
                height: 20,
              ),
              const CustomText(
                label: 'Properties',
                color: AppColors.black,
                size: FontSize.xMedium,
                weight: FontWeight.w500,
              ),
              const CustomSize(
                height: 5,
              ),
              PropertyContainer(
                //height: 164,
                child: Padding(
                  padding: const EdgeInsets.only(top: 20, left: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Image.asset(
                        AppImages.houseIcon,
                        color: AppColors.turquoise,
                      ),
                      const CustomSize(
                        height: 5,
                      ),
                      const CustomText(
                        label: 'No properties yet',
                        color: AppColors.darkGreen,
                        size: FontSize.xMedium,
                        weight: FontWeight.w600,
                      ),
                      const CustomText(
                        label: 'The properties list will show here',
                        color: AppColors.darkGreen,
                        size: FontSize.xxMedium,
                        weight: FontWeight.w300,
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.only(bottom: 10),
                  child: ListView.builder(
                    shrinkWrap: true,
                    itemCount: 5,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.only(bottom: 18),
                        child: GestureDetector(
                          onTap: () {
                            Navigator.of(context)
                                .pushNamed(AppRoutes.listDetails);
                          },
                          child: PropertyContainer(
                            child: Padding(
                              padding: const EdgeInsets.all(2.0),
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
                                          height: 8,
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
              )
            ],
          ),
        ),
      ),
    );
  }
}
