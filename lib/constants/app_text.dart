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

class AppText {
  static const String userDataCollection = 'user_data';
  static const String propertyCollection = 'properties';
  static const String offerCollection = 'offer';
  static const String id = 'property_id';
  static const String address = 'address';
  static const String bedroom = 'bedroom';
  static const String bathroom = 'bathroom';
  static const String appartmentSize = 'appartment_size';
  static const String propertyType = 'propert_type';
  static const String rentAggrement = 'rent_aggrement';
  static const String furnishing = 'furnishing';
  static const String rent = 'rent';
  static const String availableDate = 'available_date';
  static const String description = 'description ';
  static const String image = 'image';
}
