import 'package:flutter/material.dart';

class BedroomProvider extends ChangeNotifier {
  int _bedroomCount = 1;

  int get bedroomCount => _bedroomCount;

  void incrementBedroom() {
    _bedroomCount++;
    notifyListeners();
  }

  void decrementBedroom() {
    if (_bedroomCount > 1) {
      _bedroomCount--;
      notifyListeners();
    }
  }
}

class BathroomProvider extends ChangeNotifier {
  int _bathroomCount = 1;

  int get bathroomCount => _bathroomCount;

  void incrementBathroom() {
    _bathroomCount++;
    notifyListeners();
  }

  void decrementBathroom() {
    if (_bathroomCount > 1) {
      _bathroomCount--;
      notifyListeners();
    }
  }
}
