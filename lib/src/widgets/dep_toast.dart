import 'package:another_flushbar/flushbar.dart';
import 'package:deposits_ui_kit/src/utils/enum.dart';
import 'package:deposits_ui_kit/src/values/dep_colors.dart';
import 'package:flutter/material.dart';

void depToast({
  BuildContext? context,
  Duration? duration,
  String? msg,
  String? title,
  bool isDismissable = true,
  bool isToastFloat = true,
  bool isLeftIndicatorPresent = false,
  required ToastType toastType,
}) {
  IconData? icon;
  Color? backgroundColor, titleColor, messageColor, leftBarIndicatorColor;
  switch (toastType) {
    case ToastType.General:
      icon = null;
      backgroundColor = gray200;
      leftBarIndicatorColor = null;
      titleColor = black;
      messageColor = black;
      break;
    case ToastType.Info:
      icon = Icons.error;
      backgroundColor = blue500;
      leftBarIndicatorColor = blue500;
      titleColor = white;
      messageColor = white;
      break;
    case ToastType.Warning:
      icon = Icons.warning;
      backgroundColor = orange600;
      leftBarIndicatorColor = orange600;
      titleColor = black;
      messageColor = black;
      break;
    case ToastType.Error:
      icon =Icons.error;
      backgroundColor = red500;
      leftBarIndicatorColor = red500;
      titleColor = white;
      messageColor = white;
      break;
    case ToastType.Success:
      icon = Icons.check_circle_rounded;
      backgroundColor = green500;
      leftBarIndicatorColor = green500;
      titleColor = white;
      messageColor = white;
      break;
  }
  duration ?? const Duration(milliseconds: 4000);
  Flushbar(
    padding: const EdgeInsets.all(15),
    margin: isToastFloat ? const EdgeInsets.only(top: 15, left: 10, right: 10) : EdgeInsets.zero,
    borderRadius: BorderRadius.circular(8),
    barBlur: 50.0,
    flushbarStyle: isToastFloat? FlushbarStyle.FLOATING : FlushbarStyle.GROUNDED,
    icon: Icon(
      icon,
      color:isLeftIndicatorPresent ? leftBarIndicatorColor : white,
      size: 16,
    ),
    duration: const Duration(milliseconds: 4000),
    isDismissible: isDismissable,
    flushbarPosition: FlushbarPosition.TOP,
    backgroundColor: isLeftIndicatorPresent ? white : backgroundColor,
    leftBarIndicatorColor: leftBarIndicatorColor,
    dismissDirection: FlushbarDismissDirection.HORIZONTAL,
    forwardAnimationCurve: Curves.fastLinearToSlowEaseIn,
    title: title,
    titleColor: isLeftIndicatorPresent ? black : titleColor,
    message: msg,
    messageColor: isLeftIndicatorPresent ? black : messageColor,
    borderColor: isLeftIndicatorPresent ? leftBarIndicatorColor : null,
    borderWidth: 1.5,
  ).show(context!);
}
