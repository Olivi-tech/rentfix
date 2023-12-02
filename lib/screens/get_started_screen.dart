import 'package:flutter/material.dart';
import 'package:rent_fix/constants/constants.dart';
import 'package:rent_fix/widgets/widgets.dart';

class GetStartedScreen extends StatelessWidget {
  const GetStartedScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColors.turquoise,
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const CustomSize(
                      height: 20,
                    ),
                    Image.asset(
                      AppImages.splashLogo,
                      height: 100,
                    ),
                    const CustomSize(
                      height: 10,
                    ),
                    const CustomText(
                      label: 'Find Your \nPerfect Place',
                      color: AppColors.white,
                      size: FontSize.exLarge,
                      weight: FontWeight.w900,
                    ),
                    CustomButton(
                      onPressed: () {},
                      width: 161,
                      height: 50,
                      child: const CustomText(
                        label: 'GET STARTED',
                        color: AppColors.turquoise,
                        size: FontSize.small,
                        weight: FontWeight.w600,
                      ),
                    ),
                    const CustomSize(
                      height: 20,
                    ),
                    const Text.rich(
                      TextSpan(
                        children: [
                          TextSpan(
                            text: 'By tapping Continue, you agree to our ',
                            style: TextStyle(
                              color: AppColors.white,
                              fontSize: FontSize.small,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          TextSpan(
                            text: 'Terms and Condition',
                            style: TextStyle(
                              decorationColor: AppColors.white,
                              color: Colors.white,
                              fontSize: FontSize.small,
                              decoration: TextDecoration.underline,
                              fontWeight: FontWeight.w500,
                              height: 0.11,
                            ),
                          ),
                          WidgetSpan(
                              child: SizedBox(
                            height: 30,
                          )),
                          TextSpan(
                            text: ' & ',
                            style: TextStyle(
                              color: AppColors.white,
                              fontSize: FontSize.small,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          TextSpan(
                            text: 'Privacy Policy',
                            style: TextStyle(
                              color: AppColors.white,
                              fontSize: FontSize.small,
                              decorationColor: Colors.white,
                              fontWeight: FontWeight.w500,
                              decoration: TextDecoration.underline,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Column(
                children: [
                  const CustomSize(
                    height: 10,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Align(
                      alignment: Alignment.centerRight,
                      child: Image.asset(
                        AppImages.layerHouse,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
    /////
  }
}
