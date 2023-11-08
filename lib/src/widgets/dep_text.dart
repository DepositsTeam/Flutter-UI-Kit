import 'package:flutter/material.dart';
import 'package:deposits_ui_kit/deposits_ui_kit.dart';

class DepText extends StatelessWidget {
  final String text;
  final Color? txtColor;
  final double? font, lineHeight;
  final int? maxLine;
  final FontWeight? fntweight;
  final FontStyle? fntstyle;
  final double? letterSpace;
  final TextAlign? txtAlign;
  final TextStyle? textStyle;
  final TextDecoration? textDecoration;
  final bool? softWrap;
  final TextOverflow? ellipsis;
  final GestureTapCallback? nav;
  final String? fontFamily;

  const DepText(
      {super.key,
      required this.text,
      this.txtColor,
      this.txtAlign,
      this.font,
      this.maxLine,
      this.fntweight,
      this.fntstyle,
      this.letterSpace,
      this.textStyle,
      this.textDecoration,
      this.softWrap,
      this.lineHeight,
      this.fontFamily,
      this.ellipsis,
      this.nav});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: nav,
      child: Text(
        text,
        textAlign: txtAlign,
        softWrap: softWrap,
        overflow: ellipsis,
        maxLines: maxLine,
        style: textStyle ??
            TextStyle(
                decoration: textDecoration ?? TextDecoration.none,
                color: txtColor ?? black,
                fontSize: font ?? fontSize14,
                fontFamily: fontFamily,
                height: lineHeight,
                letterSpacing: letterSpace,
                fontStyle: fntstyle ?? FontStyle.normal,
                fontWeight: fntweight),
      ),
    );
  }
}
