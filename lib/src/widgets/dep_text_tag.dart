import 'package:flutter/material.dart';
import 'package:deposits_ui_kit/deposits_ui_kit.dart';

class DepTextTagTag extends StatelessWidget {
  final String text;
  final double? tagFontSize;
  final Color? backgroundColor;
  final bool isSolid;

  const DepTextTagTag(
      {super.key,
      required this.text,
      this.tagFontSize,
      this.isSolid = false,
      required this.backgroundColor});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: const BorderRadius.all(Radius.circular(25.0)),
      child: Container(
        color: isSolid ? backgroundColor : backgroundColor!.withOpacity(.2),
        padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 6),
        child: Text(text,
            style: TextStyle(
                fontSize: tagFontSize ?? 12.0,
                color: isSolid ? white : backgroundColor)),
      ),
    );
  }
}
