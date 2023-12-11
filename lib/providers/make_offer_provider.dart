import 'package:flutter/material.dart';

class OfferModelProvider extends ChangeNotifier {
  late String agreement;
  late String rent;
  late String avaliableDate;

  set setAgreement(String value) {
    agreement = value;
    notifyListeners();
  }

  String get getAgreement {
    return agreement;
  }

  set setRent(String value) {
    rent = value;
    notifyListeners();
  }

  String get getRent {
    return rent;
  }

  set setAvaliableDate(String value) {
    avaliableDate = value;
    notifyListeners();
  }

  String get getAvaliableDate {
    return avaliableDate;
  }
}
