import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:rent_fix/constants/constants.dart';
import 'package:rent_fix/widgets/widgets.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final mq = MediaQuery
        .of(context)
        .size;
    return Scaffold(
      appBar: const CustomAppBar(
        title: 'My Profile',
        showSearchIcon: false,
      ),
      body: Stack(children: [
        Padding(
          padding: const EdgeInsets.only(left: 20, right: 20),
          child: Column(
            children: [
              const CustomSize(
                height: 20,
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
                height: 50,
              ),
              CustomInfoContainer(
                height: 72,
                width: mq.width,
                child: const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CustomText(
                      label: 'Name',
                      size: FontSize.small,
                      color: AppColors.greyishBlue,
                      weight: FontWeight.w400,
                    ),
                    CustomText(
                      label: 'Jacob Jones',
                      size: FontSize.xxMedium,
                      weight: FontWeight.w500,
                    ),
                  ],
                ),
              ),
              const CustomSize(
                height: 10,
              ),
              CustomInfoContainer(
                height: 72,
                width: mq.width,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CustomText(
                          label: 'Phone Number',
                          size: FontSize.small,
                          color: AppColors.greyishBlue,
                          weight: FontWeight.w400,
                        ),
                        CustomText(
                          label: '+6512313214',
                          size: FontSize.xxMedium,
                          weight: FontWeight.w500,
                        ),
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CustomContainer(
                          width: mq.width * 0.11,
                          height: mq.height * 0.05,
                          shapeDecoration: BoxDecoration(
                            color: AppColors.paleBlue,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(8),
                            child: SvgPicture.asset(
                              AppImages.editIcon,
                              width: 14,
                              height: 14,
                            ),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
              const CustomSize(
                height: 10,
              ),
              CustomInfoContainer(
                height: 72,
                width: mq.width,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CustomText(
                          label: 'Email Address',
                          size: FontSize.small,
                          color: AppColors.greyishBlue,
                          weight: FontWeight.w400,
                        ),
                        CustomText(
                          label: 'username@email.com',
                          size: FontSize.xxMedium,
                          weight: FontWeight.w500,
                        ),
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CustomContainer(
                          width: mq.width * 0.11,
                          height: mq.height * 0.05,
                          shapeDecoration: BoxDecoration(
                            color: AppColors.paleBlue,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(8),
                            child: SvgPicture.asset(
                              AppImages.editIcon,
                              width: 14,
                              height: 14,
                            ),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
              const CustomSize(
                height: 10,
              ),
              CustomInfoContainer(
                height: 72,
                width: mq.width,
                child: const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CustomText(
                      label: 'Id Number (NRIC/FIN/Passport)',
                      size: FontSize.small,
                      color: AppColors.greyishBlue,
                      weight: FontWeight.w400,
                    ),
                    CustomText(
                      label: 'S9345373FG',
                      size: FontSize.xxMedium,
                      weight: FontWeight.w500,
                    ),
                  ],
                ),
              ),
              const CustomSize(
                height: 40,
              ),
              CustomButton(
                borderColor: Colors.transparent,
                onPressed: () {

                },
                text: 'Save',
              ),
            ],
          ),
        ),
        Positioned(
          top: 130,
          left: 225,
          child: CustomContainer(
            width: mq.width * 0.11,
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
              child: SvgPicture.asset(
                AppImages.cameraIcon,
                width: 14,
                height: 14,
              ),
            ),
          ),
        ),
      ]),
    );
  }
}

class CustomInfoContainer extends StatelessWidget {
  final double height;
  final double width;
  final Widget child;

  const CustomInfoContainer({
    Key? key,
    required this.height,
    required this.width,
    required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        border: Border.all(
          color: AppColors.turquoiseBlue,
          width: 1,
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(15),
        child: child,
      ),
    );
  }
}
