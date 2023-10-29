import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:deposits_ui_kit/deposits_ui_kit.dart';

class DepRichTextWidget extends StatelessWidget {
  final String? title, title2, subtitle, subtitle2, subtitle3;
  final Function()? onSubtitleTap, onSubtitleTap2, onSubtitleTap3;
  final TextStyle? titleStyle,
      titleStyle2,
      subtitleStyle,
      subtitleStyle2,
      subtitleStyle3;
  final TextAlign textAlign;
  final Color tenantColor;

  const DepRichTextWidget({
    Key? key,
    this.title,
    this.title2,
    this.subtitle,
    this.subtitle2,
    this.subtitle3,
    this.onSubtitleTap,
    this.onSubtitleTap2,
    this.onSubtitleTap3,
    this.titleStyle,
    this.titleStyle2,
    this.subtitleStyle,
    this.subtitleStyle2,
    this.subtitleStyle3,
    required this.tenantColor,
    this.textAlign = TextAlign.center,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RichText(
      textAlign: textAlign,
      text: TextSpan(
        text: title,
        style: titleStyle ??
            const TextStyle(
              color: black,
              fontSize: fontSize13,
            ),
        children: [
          TextSpan(
            recognizer: TapGestureRecognizer()..onTap = onSubtitleTap,
            text: ' $subtitle',
            style: subtitleStyle ??
                TextStyle(
                  fontSize: fontSize13,
                  color: tenantColor,
                ),
          ),
          TextSpan(
            recognizer: TapGestureRecognizer()..onTap = onSubtitleTap2,
            text: ' $subtitle2',
            style: subtitleStyle2 ??
                TextStyle(
                  fontSize: fontSize13,
                  color: tenantColor,
                ),
          ),
          TextSpan(
              text: title2,
              style: titleStyle2 ??
                  const TextStyle(
                    color: black,
                    fontSize: fontSize13,
                  )),
          TextSpan(
            recognizer: TapGestureRecognizer()..onTap = onSubtitleTap3,
            text: ' $subtitle3',
            style: subtitleStyle3 ??
                TextStyle(
                  fontSize: fontSize13,
                  color: tenantColor,
                ),
          ),
        ],
      ),
    );
  }
}
