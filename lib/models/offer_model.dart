import 'package:cloud_firestore/cloud_firestore.dart';
import '../constants/constants.dart';

class OfferData {
  final String rentAggrement;
  final int rent;
  final String date;

  OfferData({
    required this.rentAggrement,
    required this.rent,
    required this.date,
  });

  factory OfferData.fromDocument(DocumentSnapshot doc) {
    final data = doc.data() as Map<String, dynamic>;

    DateTime date = (data[AppText.availableDate] as Timestamp).toDate();

    return OfferData(
      rentAggrement: data[AppText.rentAggrement] ?? '',
      rent: data[AppText.rent] ?? '',
      date: date.toString(),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      AppText.rentAggrement: rentAggrement,
      AppText.rent: rent,
      AppText.availableDate: date,
    };
  }
}
