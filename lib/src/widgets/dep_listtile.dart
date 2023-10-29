

import 'dart:io';
import 'package:flutter/material.dart';
import 'package:deposits_ui_kit/deposits_ui_kit.dart';

class DepListTileWidget extends StatelessWidget {
  final String? title;
  final String? subTitle;
  final Function()? onTap;
  final Widget? trailing;
  final Widget? leading, subTitleWidget;
  final EdgeInsetsGeometry? contentpadding;

  const DepListTileWidget(
      {Key? key,
      this.title,
      this.subTitle,
      this.onTap,
      this.trailing,
      this.subTitleWidget,
      this.leading,
      this.contentpadding})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      dense: true,
      contentPadding: contentpadding ??
          EdgeInsets.only(
              left: 0, right: 0, bottom: 0, top: Platform.isAndroid ? 10 : 20),
      leading: leading,
      onTap: onTap,
      title: DepText(
        text: title!,
        fntweight: FontWeight.w600,
        txtColor: black,
        font: 16,
      ),
      subtitle: subTitle == null
          ? subTitleWidget
          : DepText(
              text: subTitle!,
              txtColor: const Color(0XFF8895A7),
              fntweight: FontWeight.w400,
              font: 13,
            ),
      trailing: trailing ?? const Icon(Icons.arrow_forward_ios_sharp),
    );
  }
}
