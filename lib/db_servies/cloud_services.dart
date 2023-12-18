// ignore_for_file: use_build_context_synchronously

import 'dart:io';
import 'dart:math';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:rent_fix/models/offer_model.dart';
import 'package:rent_fix/models/property_model.dart';
import 'package:rent_fix/utils/app_utils.dart';
import 'package:rent_fix/widgets/custom_snackbar.dart';
import '../constants/constants.dart';
import 'db_servies.dart';

class CloudServices {
  static final FirebaseFirestore _fireStore = FirebaseFirestore.instance;

  static CollectionReference getPropertyCollection() {
    var collection = _fireStore.collection(AppText.propertyCollection);

    return collection;
  }

  static Future<DocumentSnapshot> fetchUserData() async {
    String? uid = FirebaseAuth.instance.currentUser?.uid;
    DocumentSnapshot propertySnapshot =
        await _fireStore.collection(AppText.userDataCollection).doc(uid).get();
    return propertySnapshot;
  }

  static Future<void> uploadPropertyDataToFirebase({
    required BuildContext context,
    required List<String> images,
    required String address,
    required String name,
    required int bedrooms,
    required int bathrooms,
    required int drawingrooms,
    required int tvrooms,
    required int appartmentSize,
    required String propertyType,
    required String rentAggrement,
    required String furnishing,
    required int rent,
    required String date,
    required String description,
  }) async {
    try {
      String? uid = FirebaseAuth.instance.currentUser?.uid;
      List<String> imageUrls = [];

      showCircularIndicator(context);

      for (String image in images) {
        final storageReference = FirebaseStorage.instance.ref().child(
            'property_image/$uid/${DateTime.now().microsecondsSinceEpoch}');
        await storageReference.putFile(File(image));
        final imageUrl = await storageReference.getDownloadURL();
        imageUrls.add(imageUrl);
      }

      final propertyId = DateTime.now().millisecondsSinceEpoch.toString() +
          Random().nextInt(999).toString();

      final String propertylistDate =
          AppUtils.formatDateWithoutTime(DateTime.now());

      var propertyModel = PropertyData(
        id: propertyId,
        address: address,
        bedrooms: bedrooms,
        bathrooms: bathrooms,
        name: name,
        drawingrooms: drawingrooms,
        tvrooms: tvrooms,
        appartmentSize: appartmentSize,
        propertyType: propertyType,
        rentAggrement: rentAggrement,
        furnishing: furnishing,
        rent: rent,
        date: date,
        description: description,
        image: imageUrls,
        propertyListDate: propertylistDate,
      );

      await _fireStore
          .collection(AppText.propertyCollection)
          .add(propertyModel.toJson());

      CustomSnackBar.show(
        context: context,
        text: 'Uploaded data Successfully',
        backgroundColor: AppColors.turquoise,
      );

      hideCircularIndicator(context);
      Navigator.of(context).pop();
      //  Navigator.of(context) .popUntil((route) => route.settings.name == AppRoutes.home);
    } catch (error) {
      hideCircularIndicator(context);

      if (error is HttpException ||
          error is SocketException ||
          error is FormatException) {
        ErrorHandling.handleErrors(error: error);
      } else {
        rethrow;
      }
    }
  }

  static void showCircularIndicator(BuildContext context) {
    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (context) => const Center(
          child: CupertinoActivityIndicator(
        color: AppColors.turquoise,
      )),
    );
  }

  static void hideCircularIndicator(BuildContext context) {
    Navigator.of(context).pop();
  }

  static Future<void> uploadOfferDataToFirebase({
    required BuildContext context,
    required String rentAggrement,
    required int rent,
    required String date,
  }) async {
    try {
      var offerModel = OfferData(
        rentAggrement: rentAggrement,
        rent: rent,
        date: date,
      );
      showCircularIndicator(context);
      await _fireStore
          .collection(AppText.offerCollection)
          .add(offerModel.toJson());

      CustomSnackBar.show(
        context: context,
        text: 'Send data Successfully',
        backgroundColor: AppColors.turquoise,
      );
      hideCircularIndicator(context);
      Navigator.of(context).pop();

      ///  Navigator.of(context) .popUntil((route) => route.settings.name == AppRoutes.homeScreen);
    } catch (error) {
      if (error is HttpException ||
          error is SocketException ||
          error is FormatException) {
        ErrorHandling.handleErrors(error: error);
      } else {
        rethrow;
      }
    }
  }
}
