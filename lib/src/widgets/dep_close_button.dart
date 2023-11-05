import 'package:flutter/material.dart';

class DepCloseButton extends StatelessWidget {
  final Widget? leading;
  final Function()? onCloseTap;
  final Color? closeButtonColor;
  final EdgeInsetsGeometry? padding;

  const DepCloseButton({
    super.key,
    this.leading,
    this.onCloseTap,
    this.closeButtonColor,
    this.padding,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: padding ?? const EdgeInsets.all(0.0),
      child: IconButton(
        onPressed: onCloseTap ?? () => Navigator.pop(context),
        icon: Padding(
          padding: const EdgeInsets.only(left: 16.0),
          child: leading ??
              Image.asset(
                'assets/images/ic_cancel.png',
                scale: 2.5,
                height: (20),
                width: (20),
                color: closeButtonColor ?? const Color.fromRGBO(30, 32, 42, 1),
              ),
        ),
      ),
    );
  }
}
