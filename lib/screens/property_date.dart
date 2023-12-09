import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:rent_fix/constants/constants.dart';
import 'package:rent_fix/model/property_model.dart';
import 'package:rent_fix/utils/app_utils.dart';
import 'package:rent_fix/widgets/widgets.dart';
import 'package:syncfusion_flutter_datepicker/datepicker.dart';

class PropertyDate extends StatelessWidget {
  const PropertyDate({super.key});

  @override
  Widget build(BuildContext context) {
    final mq = MediaQuery.of(context).size;
    final propertyProvider = Provider.of<Property>(context);
    DateTime selectedDate = DateTime.now();

    return Scaffold(
      appBar: const CustomAppBar(
        title: 'List Your Property',
        showSearchIcon: false,
      ),
      body: Padding(
        padding: const EdgeInsets.all(15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const CustomText(
              label: 'When will the property be ready to rent?',
              size: FontSize.xMedium,
              weight: FontWeight.w600,
            ),
            const CustomSize(
              height: 20,
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
                onSelectionChanged: (DateRangePickerSelectionChangedArgs args) {
                  selectedDate = args.value;
                },
              ),
            ),
            const CustomSize(
              height: 20,
            ),
            CustomButton(
              width: mq.width,
              onPressed: () {
                String formattedDate =
                    AppUtils.formatDateWithoutTime(selectedDate);
                propertyProvider.setAvaliableDate = formattedDate;
                Navigator.of(context).pushNamed(AppRoutes.propertyDescription);
              },
              btnColor: AppColors.turquoise,
              borderColor: Colors.transparent,
              textColor: AppColors.white,
              text: 'Next',
            )
          ],
        ),
      ),
    );
  }
}