import 'package:flutter/material.dart';

class AuthProvider extends ChangeNotifier {
  bool _isAcceptTermAndCond = false;
  bool get isAcceptTermAndCond => _isAcceptTermAndCond;

  void toggleTermsCondition() {
    _isAcceptTermAndCond = !_isAcceptTermAndCond;
    notifyListeners();
  }
}