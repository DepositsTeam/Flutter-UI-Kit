

import 'dart:io';

import 'package:deposits_ui_kit/src/values/dep_colors.dart';
import 'package:deposits_ui_kit/src/widgets/dep_text.dart';
import 'package:flutter/material.dart';

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
      leading: leading ?? null,
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
              txtColor: Color(0XFF8895A7),
              fntweight: FontWeight.w400,
              font: 13,
            ),
      trailing: trailing ?? const Icon(Icons.arrow_forward_ios_sharp),
    );
  }
}
