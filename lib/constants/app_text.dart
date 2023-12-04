import 'package:rent_fix/constants/constants.dart';
import 'package:rent_fix/screens/activities_screen.dart';

class ActivityDataConstants {
  static List<ActivityData> activityDataList = [
    ActivityData(
      status: AppColors.yellow,
      time: 'Today at 9:34 PM',
      title: 'John Doe has declined the offer',
    ),
    ActivityData(
      status: AppColors.yellow,
      time: 'Today at 4:23 PM',
      title: 'Pam Basely has sent you an offer for Buangkok Cres',
    ),
  ];

  static List<ActivityData> activityReadDataList = [
    ActivityData(
      status: AppColors.green,
      time: 'Today at 9:34 PM',
      title: 'John Doe has declined the offer',
    ),
    ActivityData(
      status: AppColors.green,
      time: 'Today at 9:34 PM',
      title: 'A new property added',
    ),
    ActivityData(
      status: AppColors.green,
      time: 'Today at 9:34 PM',
      title: 'Buangkok Cres has been unlisted from marketplace',
    ),
    ActivityData(
      status: AppColors.green,
      time: 'Today at 9:34 PM',
      title: 'John Doe has declined the offer',
    ),
    ActivityData(
      status: AppColors.green,
      time: 'Today at 4:23 PM',
      title: 'Pam Basely has sent you an offer for Buangkok Cres',
    ),
    ActivityData(
      status: AppColors.green,
      time: 'Today at 4:23 PM',
      title: 'Pam Basely has sent you an offer for Buangkok Cres',
    ),
  ];
}
