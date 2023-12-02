import 'package:flutter/material.dart';
import 'package:pinput/pinput.dart';
import 'package:rent_fix/constants/constants.dart';
import 'package:rent_fix/widgets/custom_button.dart';
import 'package:rent_fix/widgets/custom_size.dart';
import 'package:rent_fix/widgets/custom_text.dart';

class OTPVerificationScreen extends StatelessWidget {
  const OTPVerificationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColors.turquoise,
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 20,
              ),
              Image.asset(
                AppImages.splashLogo,
                height: 100,
              ),
              const SizedBox(
                height: 20,
              ),
              const CustomText(
                label: 'Login to your account',
                color: Colors.black,
                size: FontSize.large,
                weight: FontWeight.w600,
              ),
              const CustomText(
                label:
                    'We sent a text message to the phone number starting with\n+658860*****. Please enter the 6 digit code you received',
                color: Color(0xFF242528),
                size: 11,
                weight: FontWeight.w400,
              ),
              const SizedBox(
                height: 30,
              ),
              const CustomText(
                label: 'OTP Verification',
                color: AppColors.darkGreen,
                size: FontSize.small,
                weight: FontWeight.w500,
              ),
              Pinput(
                length: 6,
                defaultPinTheme: PinTheme(
                    width: 56,
                    height: 50,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(color: Colors.black),
                        borderRadius: BorderRadius.circular(15))),
              ),
              const CustomSize(
                height: 30,
              ),
              CustomButton(
                onPressed: () {},
                btnColor: AppColors.darkGreen,
                child: const CustomText(
                  label: 'Submit',
                  textAlign: TextAlign.center,
                  color: AppColors.white,
                  size: FontSize.large,
                  weight: FontWeight.w600,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
