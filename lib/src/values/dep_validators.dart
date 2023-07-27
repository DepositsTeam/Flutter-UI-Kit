import 'package:deposits_ui_kit/src/utils/enum.dart';
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


String preferedFont(DepFontName fontName) {
  switch (fontName) {
    case DepFontName.HeroNew:
      return "HeroNew";
    case DepFontName.SFProDisplay:
      return "SFProDisplay";
    case DepFontName.SFProRounded:
      return "SFProRounded";
    case DepFontName.SFProText:
      return "SFProText";
    case DepFontName.CircularStd:
      return "CircularStd";
    default:
      return "SFProText";
  }
}
