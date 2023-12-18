import 'package:flutter/material.dart';
import 'package:rent_fix/constants/constants.dart';
import 'package:rent_fix/widgets/widgets.dart';

class ActivitiesScreen extends StatelessWidget {
  const ActivitiesScreen({super.key});
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: const CustomAppBar(
        title: 'Activities',
        showSearchIcon: false,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const CustomText(
                    label: 'Uread',
                    size: FontSize.xxMedium,
                    weight: FontWeight.w600,
                  ),
                  Container(
                    width: screenWidth * 0.25,
                    height: screenWidth * 0.07,
                    decoration: ShapeDecoration(
                      color: AppColors.paleBlue,
                      shape: RoundedRectangleBorder(
                        side: const BorderSide(
                            width: 1, color: AppColors.turquoise),
                        borderRadius: BorderRadius.circular(6),
                      ),
                    ),
                    child: const Center(
                      child: Padding(
                        padding: EdgeInsets.only(left: 5, right: 5),
                        child: CustomText(
                          label: 'Mark all as read',
                          color: AppColors.darkGreen,
                          size: 10,
                          weight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: screenWidth * 0.5,
              child: ListView.builder(
                itemCount: ActivityDataConstants.activityDataList.length,
                itemBuilder: (context, index) {
                  ActivityData data =
                      ActivityDataConstants.activityDataList[index];

                  return ActivityContainer(
                    status: data.status,
                    time: data.time,
                    title: data.title,
                  );
                },
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(bottom: 15, left: 15, top: 15),
              child: CustomText(
                label: 'Read',
                size: FontSize.xxMedium,
                weight: FontWeight.w600,
              ),
            ),
            SizedBox(
              height: screenHeight,
              child: ListView.builder(
                itemCount: ActivityDataConstants.activityReadDataList.length,
                itemBuilder: (context, index) {
                  ActivityData data =
                      ActivityDataConstants.activityReadDataList[index];

                  return ActivityContainer(
                    status: data.status,
                    time: data.time,
                    title: data.title,
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ActivityData {
  final Color status;
  final String time;
  final String title;

  ActivityData({
    required this.status,
    required this.time,
    required this.title,
  });
}
