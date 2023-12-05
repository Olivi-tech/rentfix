import 'package:flutter/material.dart';
import 'package:rent_fix/constants/constants.dart';
import 'package:rent_fix/widgets/widgets.dart';
import 'package:syncfusion_flutter_datepicker/datepicker.dart';

class OfferScreen extends StatefulWidget {
  const OfferScreen({super.key});

  @override
  State<OfferScreen> createState() => _OfferScreenState();
}

class _OfferScreenState extends State<OfferScreen> {
  ValueNotifier<int> pageNotifier = ValueNotifier(0);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(title: 'Make an Offer'),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            const CustomSize(
              height: 20,
            ),
            Flexible(
              flex: 1,
              child: Row(
                children: [
                  Expanded(child: _buildTab(index: 0)),
                  Expanded(child: _buildTab(index: 1)),
                  Expanded(child: _buildTab(index: 2)),
                  Expanded(child: _buildTab(index: 3))
                ],
              ),
            ),
            const CustomSize(
              height: 10,
            ),
            Flexible(
              flex: 9,
              child: PageView(
                onPageChanged: (index) {
                  pageNotifier.value = index;
                },
                children: [
                  _firstScreen(),
                  _secondOffer(),
                  _thirdOffer(),
                  _fourthScreen(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildTab({required int index}) {
    return ValueListenableBuilder(
      valueListenable: pageNotifier,
      builder: (context, pageIndex, child) => Container(
          height: 5,
          decoration: BoxDecoration(
            color: pageIndex > index
                ? AppColors.turquoise
                : pageIndex == index
                    ? AppColors.darkGreen
                    : AppColors.paleAqua,
            // Set the foreground color to black
            borderRadius: BorderRadius.circular(50),
          )),
    );
  }

  Widget _firstScreen() {
    return Column(
      children: [
        const CustomSize(
          height: 10,
        ),
        const CustomText(
          label: 'When does the tenant want to move in?',
          color: AppColors.black,
          size: FontSize.xMedium,
          weight: FontWeight.w600,
        ),
        const CustomSize(
          height: 20,
        ),
        Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                border: Border.all(color: AppColors.turquoise)),
            height: 250,
            child: SfDateRangePicker(
              showNavigationArrow: true,
              monthViewSettings: const DateRangePickerMonthViewSettings(),
              selectionColor: AppColors.turquoise,
            )),
        const CustomSize(
          height: 20,
        ),
        CustomButton(
          borderColor: Colors.transparent,
          btnColor: AppColors.turquoise,
          text: 'Next',
          textColor: Colors.white,
          onPressed: () {},
        )
      ],
    );
  }

  Widget _secondOffer() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const CustomSize(
          height: 10,
        ),
        const CustomText(
          label: 'How long does the tenant want to\n rent for?',
          color: AppColors.black,
          size: FontSize.xMedium,
          weight: FontWeight.w600,
        ),
        const CustomSize(
          height: 20,
        ),
        const CustomText(
          label: 'Rental Duration',
          color: AppColors.darkGreen,
          size: FontSize.xxMedium,
          weight: FontWeight.w500,
        ),
        const CustomSize(
          height: 5,
        ),
        const CustomTextField(
            isBorder: true,
            hintText: 'Enter the number of months',
            fillColor: Colors.white),
        const CustomSize(
          height: 20,
        ),
        CustomButton(
          borderColor: Colors.transparent,
          btnColor: AppColors.turquoise,
          textColor: Colors.white,
          text: 'Next',
          onPressed: () {},
        )
      ],
    );
  }

  Widget _thirdOffer() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const CustomSize(
          height: 10,
        ),
        const CustomText(
          label: 'How much does the tenant wish to\n pay per month?',
          color: AppColors.black,
          size: FontSize.xMedium,
          weight: FontWeight.w600,
        ),
        const CustomSize(
          height: 20,
        ),
        const CustomText(
          label: 'Monthly Rent',
          color: AppColors.darkGreen,
          size: FontSize.xxMedium,
          weight: FontWeight.w500,
        ),
        const CustomSize(
          height: 5,
        ),
        const CustomTextField(
            isBorder: true,
            hintText: 'Enter Amount in S\$',
            fillColor: Colors.white),
        const CustomSize(
          height: 20,
        ),
        CustomButton(
          borderColor: Colors.transparent,
          btnColor: AppColors.turquoise,
          textColor: Colors.white,
          text: 'Next',
          onPressed: () {},
        )
      ],
    );
  }

  Widget _fourthScreen() {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      const CustomSize(
        height: 10,
      ),
      const CustomText(
        label: 'Summary',
        color: Colors.black,
        size: 24,
        weight: FontWeight.w600,
      ),
      const CustomSize(
        height: 10,
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
        borderColor: Colors.transparent,
        btnColor: AppColors.turquoise,
        text: 'Submit',
        textColor: AppColors.white,
        onPressed: () {},
      )
    ]);
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
