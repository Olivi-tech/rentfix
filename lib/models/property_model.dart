import 'package:cloud_firestore/cloud_firestore.dart';
import '../constants/constants.dart';

class PropertyData {
  final String address;
  final String name;
  final int bedrooms;
  final int bathrooms;
  final int drawingrooms;
  final int tvrooms;
  final int appartmentSize;
  final String propertyType;
  final String rentAggrement;
  final String furnishing;
  final int rent;
  final String date;
  final String description;
  final String id;
  final List<String> image;
  final String propertyListDate;

  PropertyData({
    required this.name,
    required this.drawingrooms,
    required this.tvrooms,
    required this.image,
    required this.address,
    required this.bedrooms,
    required this.bathrooms,
    required this.appartmentSize,
    required this.propertyType,
    required this.rentAggrement,
    required this.furnishing,
    required this.rent,
    required this.date,
    required this.description,
    required this.id,
    required this.propertyListDate,
  });

  factory PropertyData.fromDocument(DocumentSnapshot doc) {
    final data = doc.data() as Map<String, dynamic>;

    DateTime date = (data[AppText.availableDate] as Timestamp).toDate();

    return PropertyData(
      address: data[AppText.address] ?? '',
      name: data[AppText.name] ?? '',
      bedrooms: data[AppText.bedroom] ?? '',
      bathrooms: data[AppText.bathroom] ?? '',
      drawingrooms: data[AppText.drawingroom] ?? '',
      tvrooms: data[AppText.tvroom] ?? '',
      appartmentSize: data[AppText.appartmentSize] ?? '',
      propertyType: data[AppText.propertyType] ?? '',
      rentAggrement: data[AppText.rentAggrement] ?? '',
      furnishing: data[AppText.furnishing] ?? '',
      rent: data[AppText.rent] ?? '',
      date: date.toString(),
      description: data[AppText.description] ?? '',
      image: data[AppText.image] ?? '',
      id: data[AppText.id],
      propertyListDate: data[AppText.propertyListDate] ?? '',
    );
  }

  Map<String, dynamic> toJson() {
    return {
      AppText.name: name,
      AppText.tvroom: tvrooms,
      AppText.drawingroom: drawingrooms,
      AppText.address: address,
      AppText.bedroom: bedrooms,
      AppText.bathroom: bathrooms,
      AppText.appartmentSize: appartmentSize,
      AppText.propertyType: propertyType,
      AppText.rentAggrement: rentAggrement,
      AppText.furnishing: furnishing,
      AppText.rent: rent,
      AppText.availableDate: date,
      AppText.description: description,
      AppText.image: image,
      AppText.id: id,
      AppText.propertyListDate: propertyListDate,
    };
  }
}