import 'package:flutter/material.dart';
import 'package:deposits_ui_kit/deposits_ui_kit.dart';

class DepAppbarWidget extends PreferredSize {
  final String? title;
  final Color? backgroundColor, backbuttonColor, closeButtonColor, textColor;
  final TextStyle? textStyle;
  final List<Widget>? actions;
  final Function()? onActionButtonTap, onBackPress, onClosePress;
  final double? actionButtonWidth, textSize;
  final Widget? titleWidget, backPressleading, onCloseLeading, bottom;
  final bool addBackButton;
  final bool addCloseButton;
  final bool? centerTitle;
  final FontWeight? textFontWeight;
  final EdgeInsetsGeometry? backButtonPadding, closeButtonPadding;

  DepAppbarWidget(
      {Key? key,
      this.title,
      this.titleWidget,
      this.backPressleading,
      this.onCloseLeading,
      this.textSize,
      this.textFontWeight,
      this.addBackButton = true,
      this.addCloseButton = true,
      this.onBackPress,
      this.onClosePress,
      this.backgroundColor = white,
      this.backbuttonColor = black,
      this.closeButtonColor = black,
      this.textColor = black,
      this.textStyle,
      this.actions,
      this.onActionButtonTap,
      this.actionButtonWidth = 100,
      this.bottom,
      this.centerTitle = true,
      this.backButtonPadding,
      this.closeButtonPadding})
      : assert(
          textColor == null || textStyle == null,
          'Cannot provide both a textColor and a textStyle\n'
          'To provide both, use "textStyle: TextStyle(color: color)".',
        ),
        super(
          key: key,
          child: const SizedBox.shrink(),
          preferredSize: Size.fromHeight(bottom == null ? kToolbarHeight : 98),
        );

  @override
  Widget build(BuildContext context) {
    return AppBar(
      centerTitle: centerTitle,
      elevation: 0,
      actions: actions,
      actionsIconTheme: IconThemeData(
        size: 20,
      ),
      bottom: bottom == null
          ? null
          : PreferredSize(
              preferredSize: Size.fromHeight(100),
              child: bottom!,
            ),
      leading: addBackButton
          ? DepBackButton(
              leading: backPressleading,
              onBackTap: onBackPress,
              backbuttonColor: backbuttonColor,
              padding: backButtonPadding ??
                  EdgeInsets.only(left: (10)),
            )
          : addCloseButton
              ? DepCloseButton(
                  leading: onCloseLeading,
                  onCloseTap: onClosePress,
                  closeButtonColor: closeButtonColor,
                  padding: closeButtonPadding ??
                      EdgeInsets.only(left: (10)),
                )
              : null,
      leadingWidth: 45,
      backgroundColor: backgroundColor,
      title: title == null
          ? (titleWidget ?? const SizedBox.shrink())
          : Text(
              title!,
              style: textStyle ??
                  TextStyle(
                    fontFamily: "ProximaNova",
                    fontWeight: textFontWeight ?? FontWeight.bold,
                    color: textColor ?? Colors.white,
                    fontSize: textSize ?? fontSize18,
                  ),
            ),
    );
  }
}
