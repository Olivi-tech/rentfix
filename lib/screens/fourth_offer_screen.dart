import 'package:flutter/material.dart';
import 'package:rent_fix/constants/constants.dart';
import 'package:rent_fix/widgets/widgets.dart';

class FourthOfferScreen extends StatelessWidget {
  const FourthOfferScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: const CustomAppBar(
          title: 'Make a Offer',
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            const CustomText(
              label: 'Summary',
              color: Colors.black,
              size: 24,
              weight: FontWeight.w600,
            ),
            _summaryContainer(
                'When does the tenant want to move in?\n', 'November 28, 2023'),
            const CustomSize(
              height: 10,
            ),
            _summaryContainer(
                'How long does the tenant want to rent for?\n', '12 Months'),
            const CustomSize(
              height: 10,
            ),
            _summaryContainer(
                'How much does the tenant wish to pay per month?\n', '2000.00'),
            const CustomSize(
              height: 20,
            ),
            CustomButton(
              width: MediaQuery.of(context).size.width,
              borderColor: Colors.transparent,
              btnColor: AppColors.turquoise,
              text: 'Submit',
              textColor: AppColors.white,
              onPressed: () {},
            )
          ]),
        ));
  }

  Widget _summaryContainer(String firstTitle, String secondTitle) {
    return ShapeContainer(
      height: 82,
      decoration: ShapeDecoration(
        color: AppColors.paleAqua,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
      ),
      child: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: Text.rich(
                  TextSpan(
                    children: [
                      TextSpan(
                          text: firstTitle,
                          style: const TextStyle(
                              color: AppColors.darkGreen, fontSize: 14)),
                      TextSpan(
                        text: secondTitle,
                        style: const TextStyle(
                          color: AppColors.darkGreen,
                          fontSize: 14,
                          fontWeight: FontWeight.w300,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              ShapeContainer(
                width: 32,
                height: 32,
                decoration: ShapeDecoration(
                  color: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                child: Image.asset(AppImages.pen),
              )
            ],
          ),
        ),
      ),
    );
  }
}
