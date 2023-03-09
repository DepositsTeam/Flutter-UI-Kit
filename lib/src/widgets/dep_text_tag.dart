import 'package:deposits_ui_kit/src/values/dep_colors.dart';
import 'package:flutter/material.dart';

class DepTextTagTag extends StatelessWidget {
  final String text;
  final double? tagHeight, tagFontSize;
  final Color? backgroundColor;
  final bool isSolid;

  const DepTextTagTag(
      {Key? key,
      required this.text,
      this.tagHeight,
      this.tagFontSize,
      this.isSolid = false,
      required this.backgroundColor})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: const BorderRadius.all(Radius.circular(25.0)),
      child: Container(
        height: tagHeight ?? 55,
        color: isSolid ? backgroundColor : backgroundColor!.withOpacity(.2),
        padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 15),
        child: Text(text,
            style: TextStyle(
                fontSize: tagFontSize ?? 18.0, color: isSolid ? white : backgroundColor)),
      ),
    );
  }
}
