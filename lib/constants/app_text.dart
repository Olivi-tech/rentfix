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
  static const userDataCollection = 'user_data';
  static const propertyCollection = 'properties';
  static const offerCollection = 'offer';
  static const id = 'property_id';
  static const address = 'address';
  static const bedroom = 'bedroom';
  static const bathroom = 'bathroom';

  static const propertyListDate = 'property_list_date';
  static const name = 'name';
  static const drawingroom = 'drawing_room';
  static const tvroom = 'tv_room';
  static const appartmentSize = 'appartment_size';
  static const propertyType = 'propert_type';
  static const rentAggrement = 'rent_aggrement';
  static const furnishing = 'furnishing';
  static const rent = 'rent';
  static const availableDate = 'available_date';
  static const description = 'description ';
  static const image = 'image';
}
