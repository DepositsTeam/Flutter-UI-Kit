import 'package:flutter/services.dart';

class AtDotTextInputFormatter extends TextInputFormatter {
  @override
  TextEditingValue formatEditUpdate(
      TextEditingValue oldValue, TextEditingValue newValue) {
    if (newValue.text.isEmpty) {
      return newValue.copyWith(text: '');
    }
    if (newValue.text.contains(RegExp(r'[^a-zA-Z0-9@.]'))) {
      return oldValue;
    }
    return newValue;
  }
}

class DepositsNameTextInputFormatter extends TextInputFormatter {
  @override
  TextEditingValue formatEditUpdate(
      TextEditingValue oldValue, TextEditingValue newValue) {
    if (newValue.text.isEmpty) {
      return newValue.copyWith(text: '');
    }
    if (newValue.text.contains(RegExp(r'[^a-zA-Z0-9-' '.]'))) {
      return oldValue;
    }
    return newValue;
  }
}

class CardMonthInputFormatter extends TextInputFormatter {
  @override
  TextEditingValue formatEditUpdate(
      TextEditingValue oldValue, TextEditingValue newValue) {
    var newText = newValue.text;

    if (newValue.selection.baseOffset == 0) {
      return newValue;
    }

    var buffer = StringBuffer();
    for (int i = 0; i < newText.length; i++) {
      buffer.write(newText[i]);
      var nonZeroIndex = i + 1;
      if (nonZeroIndex % 2 == 0 && nonZeroIndex != newText.length) {
        buffer.write('/');
      }
    }

    var string = buffer.toString();
    return newValue.copyWith(
        text: string,
        selection: TextSelection.collapsed(offset: string.length));
  }
}



class CardNumberInputFormatter extends TextInputFormatter {
  @override
  TextEditingValue formatEditUpdate(
      TextEditingValue oldValue, TextEditingValue newValue) {
    var text = newValue.text;

    if (newValue.selection.baseOffset == 0) {
      return newValue;
    }

    var buffer = StringBuffer();
    for (int i = 0; i < text.length; i++) {
      buffer.write(text[i]);
      var nonZeroIndex = i + 1;
      if (nonZeroIndex % 4 == 0 && nonZeroIndex != text.length) {
        buffer.write('  '); // Add double spaces.
      }
    }

    var string = buffer.toString();
    return newValue.copyWith(
        text: string,
        selection: TextSelection.collapsed(offset: string.length));
  }
}

String formatCardNumber(String accountNumber) {
  accountNumber = accountNumber.replaceAll(RegExp(r'\s'), ''); // Remove spaces
  if (accountNumber.length != 16) {
    // Account number should have exactly 16 digits
    return 'Invalid Account Number';
  }

  // Mask the account number except the last four digits
  String maskedNumber =
      '${accountNumber.substring(0, 4)} **** **** ${accountNumber.substring(12, 16)}';
  return maskedNumber;
}

String formatExpiryDate(String expiryDate) {
  // Split the expiry date into month and year parts
  List<String> parts = expiryDate.split('/');

  if (parts.length == 2) {
    String formattedMonth = parts[0].replaceAll(RegExp(r'[0-9]'), '*');
    String formattedYear = parts[1].replaceAll(RegExp(r'[0-9]'), '*');
    return '$formattedMonth/$formattedYear';
  } else {
    // Invalid date format, return the original input
    return expiryDate;
  }
}

String formatCVV(String cvv) {
  // Replace all characters in the CVV with asterisks (*)
  return cvv.replaceAll(RegExp(r'.'), '*');
}
