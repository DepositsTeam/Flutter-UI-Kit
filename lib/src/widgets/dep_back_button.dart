import 'package:flutter/material.dart';

class DepBackButton extends StatelessWidget {
  final Widget? leading;
  final Function()? onBackTap;
  final Color? backbuttonColor;
  final EdgeInsetsGeometry? padding;

  const DepBackButton(
      {Key? key,
      this.leading,
      this.onBackTap,
      this.backbuttonColor,
      this.padding})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: padding ?? const EdgeInsets.all(0.0),
      child: IconButton(
        onPressed: onBackTap ?? () => Navigator.pop(context),
        icon: leading ??
            Image.asset(
              'assets/images/ic_arrow_back.png',
              scale: 2.7,
              height: (20),
              width: (20),
              color: backbuttonColor ?? const Color.fromRGBO(30, 32, 42, 1),
            ),
      ),
    );
  }
}
