import 'package:deposits_ui_kit/src/values/dep_strings.dart';

String? validateEmpty(String? v) {
    if (v!.isEmpty) {
      return fieldCantBeEmpty;
    } else {
      return null;
    }
  }

 String? validateOTP(String? v) {
    if (v!.isEmpty) {
      return fieldCantBeEmpty;
    } else if (v.length < 3) {
      return enterValidOTP;
    } else {
      return null;
    }
  }

String? validatePhone(String? v) {
    if (v!.isEmpty) {
      return fieldCantBeEmpty;
    } else if (v.length != 10) {
      return enterValidNumber;
    } else {
      return null;
    }
  }

String? validateTEmpty<T>(T? v) {
    if (v == null) {
      return fieldCantBeEmpty;
    } else {
      return null;
    }
  }


