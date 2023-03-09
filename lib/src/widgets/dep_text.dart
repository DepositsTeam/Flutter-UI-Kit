import 'package:deposits_ui_kit/src/values/dep_colors.dart';
import 'package:deposits_ui_kit/src/values/dep_dimens.dart';
import 'package:flutter/material.dart';

class DepText extends StatelessWidget {
  final String text;
  final Color? txtColor;
  final double? font;
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

  const DepText(
      {Key? key,
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
      this.ellipsis,
      this.nav})
      : super(key: key);

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
                fontFamily: 'ProximaNova',
                letterSpacing: letterSpace,
                fontStyle: fntstyle ?? FontStyle.normal,
                fontWeight: fntweight),
      ),
    );
  }
}
