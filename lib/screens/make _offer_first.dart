import 'package:flutter/material.dart';
import 'package:rent_fix/constants/constants.dart';
import 'package:rent_fix/widgets/widgets.dart';
import 'package:syncfusion_flutter_datepicker/datepicker.dart';

class MakeOffer extends StatelessWidget {
  const MakeOffer({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 0,
      length: 4,
      child: Scaffold(
        appBar: const CustomAppBar(title: 'Make a Offer'),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
              const CustomSize(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TabBar(
                    unselectedLabelColor: Colors.amberAccent,
                    unselectedLabelStyle:
                        const TextStyle(color: Colors.amberAccent),
                    padding: EdgeInsets.zero,
                    labelPadding: const EdgeInsets.symmetric(horizontal: 5),
                    indicatorSize: TabBarIndicatorSize.label,
                    labelColor: Colors.amberAccent,
                    dividerHeight: 0,
                    indicator: BoxDecoration(
                        color: AppColors.darkGreen,
                        borderRadius: BorderRadius.circular(20)),
                    tabs: [
                      Container(
                        height: 4,
                        decoration: ShapeDecoration(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15),
                          ),
                        ),
                      ),
                      Container(
                        height: 4,
                        decoration: ShapeDecoration(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15),
                          ),
                        ),
                      ),
                      Container(
                        height: 4,
                        decoration: ShapeDecoration(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15),
                          ),
                        ),
                      ),
                      Container(
                        height: 4,
                        decoration: ShapeDecoration(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15),
                          ),
                        ),
                      ),
                    ]),
              ),
              const CustomSize(
                height: 20,
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
                    //enableMultiView: true,
                    showNavigationArrow: true,
                    monthViewSettings: const DateRangePickerMonthViewSettings(),
                    selectionColor: AppColors.turquoise,
                    // backgroundColor: Colors.amberAccen,
                  )),
              const CustomSize(
                height: 20,
              ),
              CustomButton(
                width: MediaQuery.of(context).size.width,
                borderColor: Colors.transparent,
                btnColor: AppColors.turquoise,
                text: 'Next',
                textColor: Colors.white,
                onPressed: () {},
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget _secondOffer() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const CustomSize(
          height: 20,
        ),
        const CustomText(
          label: 'How long does the tenant want to\n rent for?',
          color: AppColors.black,
          size: FontSize.xMedium,
          weight: FontWeight.w600,
        ),
        const CustomSize(
          height: 15,
        ),
        const CustomText(
          label: 'Rental Duration',
          color: AppColors.darkGreen,
          size: FontSize.xxMedium,
          weight: FontWeight.w500,
        ),
        const CustomTextField(
            isBorder: true,
            hintText: 'Enter the number of months',
            fillColor: Colors.white),
        const CustomSize(
          height: 20,
        ),
        CustomButton(
          width: 350,
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
          height: 20,
        ),
        const CustomText(
          label: 'How much does the tenant wish to\n pay per month?',
          color: AppColors.black,
          size: FontSize.xMedium,
          weight: FontWeight.w600,
        ),
        const CustomSize(
          height: 15,
        ),
        const CustomText(
          label: 'Monthly Rent',
          color: AppColors.darkGreen,
          size: FontSize.xxMedium,
          weight: FontWeight.w500,
        ),
        const CustomTextField(
            isBorder: true,
            hintText: 'Enter Amount in S\$',
            fillColor: Colors.white),
        const CustomSize(
          height: 20,
        ),
        CustomButton(
          width: 350,
          borderColor: Colors.transparent,
          btnColor: AppColors.turquoise,
          textColor: Colors.white,
          text: 'Next',
          onPressed: () {},
        )
      ],
    );
  }
}
