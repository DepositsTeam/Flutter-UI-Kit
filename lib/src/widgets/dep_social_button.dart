import 'package:flutter/material.dart';
import 'package:deposits_ui_kit/deposits_ui_kit.dart';

class DepSocialButton extends StatelessWidget {
  /// Create buttons of all types. check out [GFIconButton] for icon buttons, and [GFBadge] for badges
  const DepSocialButton({
    Key? key,
    required this.onPressed,
    required this.type,
    required this.buttonType,
    this.elevation = 0.0,
    this.shape = DepButtonShape.standard,
    this.size = DepSize.medium,
    this.blockButton,
    this.fullWidthButton,
    this.onLongPress,
  }) : super(key: key);

  /// Called when the button is tapped or otherwise activated.
  final VoidCallback? onPressed;

  /// The elevation for the button's [Material] when the button is [enabled] but not pressed.
  final double elevation;

  bool get enabled => onPressed != null;

  /// Button type of GFSocialButtonShape i.e, standard, pills, square, shadow, icons
  final DepButtonShape shape;

  /// size of [double] or [GFSize] i.e, 1.2, small, medium, large etc.
  final double size;

  /// type signify the social icon type [GFSocialType] ie, whatsapp, facebook etc.
  final DepSocialType type;

  /// type signify the type of social button [GFSocialButtonType] ie, solid, outlined etc.
  final DepSocialButtonType buttonType;

  /// on true state blockButton gives block size button
  final bool? blockButton;

  /// on true state full width Button gives full width button
  final bool? fullWidthButton;

  /// Called when the button is long-pressed.
  ///
  /// If this callback and [onPressed] are null, then the button will be disabled.
  ///
  /// See also:
  ///
  ///  * [enabled], which is true if the button is enabled.
  final VoidCallback? onLongPress;

  @override
  Widget build(BuildContext context) {
    Widget? icon;
    String? text;
    Color? color;
    final double imageSize = (size == DepSize.large)
        ? 30
        : (size == DepSize.medium)
            ? 25
            : 20;
    switch (type) {
      case DepSocialType.whatsapp:
        icon = Image.asset(
          'icons/whatsapp.png',
          height: imageSize,
          width: imageSize,
          color: (buttonType == DepSocialButtonType.outline ||
                  buttonType == DepSocialButtonType.outline2x ||
                  buttonType == DepSocialButtonType.transparent)
              ? DepSocialColors.whatsapp
              : Colors.white,
        );
        text = 'Whatsapp';
        color = DepSocialColors.whatsapp;
        break;
      case DepSocialType.facebook:
        icon = Image.asset(
          'icons/facebook.png',
          height: imageSize,
          width: imageSize,
          color: (buttonType == DepSocialButtonType.outline ||
                  buttonType == DepSocialButtonType.outline2x ||
                  buttonType == DepSocialButtonType.transparent)
              ? DepSocialColors.facebook
              : Colors.white,
        );
        text = 'Facebook';
        color = DepSocialColors.facebook;
        break;
      case DepSocialType.twitter:
        icon = Image.asset(
          'icons/twitter.png',
          height: imageSize,
          width: imageSize,
          color: (buttonType == DepSocialButtonType.outline ||
                  buttonType == DepSocialButtonType.outline2x ||
                  buttonType == DepSocialButtonType.transparent)
              ? DepSocialColors.twitter
              : Colors.white,
        );
        text = 'Twitter';
        color = DepSocialColors.twitter;
        break;
      case DepSocialType.google:
        icon = Image.asset(
          'icons/google.png',
          height: imageSize,
          width: imageSize,
          color: (buttonType == DepSocialButtonType.outline ||
                  buttonType == DepSocialButtonType.outline2x ||
                  buttonType == DepSocialButtonType.transparent)
              ? DepSocialColors.google
              : Colors.white,
        );
        text = 'Google';
        color = DepSocialColors.google;
        break;
      case DepSocialType.youtube:
        icon = Image.asset(
          'icons/youtube.png',
          height: imageSize,
          width: imageSize,
          color: (buttonType == DepSocialButtonType.outline ||
                  buttonType == DepSocialButtonType.outline2x ||
                  buttonType == DepSocialButtonType.transparent)
              ? DepSocialColors.youtube
              : Colors.white,
        );
        text = 'Youtube';
        color = DepSocialColors.youtube;
        break;
      case DepSocialType.dribble:
        icon = Image.asset(
          'icons/dribble.png',
          height: imageSize,
          width: imageSize,
          color: (buttonType == DepSocialButtonType.outline ||
                  buttonType == DepSocialButtonType.outline2x ||
                  buttonType == DepSocialButtonType.transparent)
              ? DepSocialColors.dribble
              : Colors.white,
        );
        text = 'Dribble';
        color = DepSocialColors.dribble;
        break;
      case DepSocialType.linkedin:
        icon = Image.asset(
          'icons/linkedin.png',
          height: imageSize,
          width: imageSize,
          color: (buttonType == DepSocialButtonType.outline ||
                  buttonType == DepSocialButtonType.outline2x ||
                  buttonType == DepSocialButtonType.transparent)
              ? DepSocialColors.linkedin
              : Colors.white,
        );
        text = 'Linkedin';
        color = DepSocialColors.linkedin;
        break;
      case DepSocialType.pinterest:
        icon = Image.asset(
          'icons/pinterest.png',
          height: imageSize,
          width: imageSize,
          color: (buttonType == DepSocialButtonType.outline ||
                  buttonType == DepSocialButtonType.outline2x ||
                  buttonType == DepSocialButtonType.transparent)
              ? DepSocialColors.pininterest
              : Colors.white,
        );
        text = 'Pinterest';
        color = DepSocialColors.pininterest;
        break;
      case DepSocialType.slack:
        icon = Image.asset(
          'icons/slack.png',
          height: imageSize,
          width: imageSize,
          color: (buttonType == DepSocialButtonType.outline ||
                  buttonType == DepSocialButtonType.outline2x ||
                  buttonType == DepSocialButtonType.transparent)
              ? DepSocialColors.slack
              : Colors.white,
        );
        text = 'Slack';
        color = DepSocialColors.slack;
        break;
      case DepSocialType.line:
        icon = Image.asset(
          'icons/line.png',
          height: imageSize,
          width: imageSize,
          color: (buttonType == DepSocialButtonType.outline ||
                  buttonType == DepSocialButtonType.outline2x ||
                  buttonType == DepSocialButtonType.transparent)
              ? DepSocialColors.line
              : Colors.white,
        );
        text = 'Line';
        color = DepSocialColors.line;
        break;
      case DepSocialType.wechat:
        icon = Image.asset(
          'icons/wechat.png',
          height: imageSize,
          width: imageSize,
          color: (buttonType == DepSocialButtonType.outline ||
                  buttonType == DepSocialButtonType.outline2x ||
                  buttonType == DepSocialButtonType.transparent)
              ? DepSocialColors.wechat
              : Colors.white,
        );
        text = 'WeChat';
        color = DepSocialColors.wechat;
        break;
    }

    switch (buttonType) {
      case DepSocialButtonType.solid:
        return socialButtonSolid(icon, text, color);
      case DepSocialButtonType.outline:
        return socialButtonOutlined(icon, text, color);
      case DepSocialButtonType.outline2x:
        return socialButtonOutlined2x(icon, text, color);
      case DepSocialButtonType.transparent:
        return socialButtonTransparent(icon, text, color);
      case DepSocialButtonType.icon:
        return socialButtonIcon(icon, color);
    }
  }

  Widget socialButtonSolid(Widget? icon, String? text, Color color) =>
      DepNormalButton(
        onPressed: onPressed,
        elevation: elevation,
        shape: shape,
        size: size,
        text: text,
        blockButton: blockButton,
        fullWidthButton: fullWidthButton,
        onLongPress: onLongPress,
        icon: icon,
        color: color,
      );

  Widget socialButtonOutlined(Widget? icon, String? text, Color color) =>
      DepNormalButton(
        onPressed: () {},
        type: DepButtonType.outline,
        shape: shape,
        size: size,
        text: text,
        blockButton: blockButton,
        fullWidthButton: fullWidthButton,
        onLongPress: onLongPress,
        icon: icon,
        color: color,
        boxShadow: const BoxShadow(
          color: Colors.black,
          blurRadius: 10, // soften the shadow
          spreadRadius: 7, //extend the shadow
          offset: Offset(
            5, // Move to right 10  horizontally
            5, // Move to bottom 5 Vertically
          ),
        ),
      );

  Widget socialButtonOutlined2x(Widget icon, String text, Color color) =>
      DepNormalButton(
        onPressed: () {},
        type: DepButtonType.outline2x,
        shape: shape,
        size: size,
        text: text,
        blockButton: blockButton,
        fullWidthButton: fullWidthButton,
        onLongPress: onLongPress,
        icon: icon,
        color: color,
        boxShadow: const BoxShadow(
          color: Colors.black,
          blurRadius: 10, // soften the shadow
          spreadRadius: 7, //extend the shadow
          offset: Offset(
            5, // Move to right 10  horizontally
            5, // Move to bottom 5 Vertically
          ),
        ),
      );

  Widget socialButtonTransparent(Widget icon, String text, Color color) =>
      DepNormalButton(
        onPressed: () {},
        type: DepButtonType.transparent,
        shape: shape,
        size: size,
        text: text,
        blockButton: blockButton,
        fullWidthButton: fullWidthButton,
        onLongPress: onLongPress,
        icon: icon,
        color: color,
        boxShadow: const BoxShadow(
          color: Colors.black,
          blurRadius: 10, // soften the shadow
          spreadRadius: 7, //extend the shadow
          offset: Offset(
            5, // Move to right 10  horizontally
            5, // Move to bottom 5 Vertically
          ),
        ),
      );

  Widget socialButtonIcon(Widget? icon, Color color) => Material(
        shape: RoundedRectangleBorder(
          borderRadius: shape == DepButtonShape.pills
              ? BorderRadius.circular(50)
              : BorderRadius.circular(0),
        ),
        elevation: elevation,
        child: DepIconButton(
          onPressed: () {},
          icon: icon!,
          color: color,
          size: size,
          type: DepButtonType.solid,
          shape: shape == DepButtonShape.standard
              ? DepIconButtonShape.standard
              : shape == DepButtonShape.pills
                  ? DepIconButtonShape.circle
                  : DepIconButtonShape.square,
        ),
      );
}
