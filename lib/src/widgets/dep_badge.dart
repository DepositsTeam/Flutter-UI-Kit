import 'package:deposits_ui_kit/deposits_ui_kit.dart';
import 'package:flutter/material.dart';

class DepBadge extends StatefulWidget {
  /// Create badges of all types, check out [GFButtonBadge] for button badges and [GFIconBadge] for icon type badges
  const DepBadge({
    super.key,
    this.textStyle,
    this.borderShape,
    this.shape = BadgeShape.standard,
    this.color = red500,
    this.textColor = white,
    this.size = DepSize.small,
    this.border,
    this.text,
    this.child,
  });

  /// The border side for the badge's [Material].
  final BorderSide? border;

  /// Typically the counter badge's shape.
  final ShapeBorder? borderShape;

  /// Counter type of [BadgeShape] i.e, standard, pills, square, circle
  final BadgeShape shape;

  /// Pass [GFColors] or [Color]
  final Color color;

  /// size of [double] or [DepSize] i.e, 1.2, small, medium, large etc.
  final double size;

  /// child of type [Widget] is alternative to child. text will get priority over child
  final Widget? child;

  /// text of type [String] is alternative to child. text will get priority over child
  final String? text;

  /// text style of counter text.
  final TextStyle? textStyle;

  /// Pass [GFColors] or [Color]
  final Color textColor;

  @override
  GFBadgeState createState() => GFBadgeState();
}

class GFBadgeState extends State<DepBadge> {
  late Color color;
  late Color textColor;
  Widget? child;
  BadgeShape? counterShape;
  late double size;
  double? height;
  double? width;
  double? fontSize;

  @override
  void initState() {
    color = widget.color;
    textColor = widget.textColor;
    child = widget.text != null ? Text(widget.text ?? '') : widget.child;
    counterShape = widget.shape;
    size = widget.size;
    super.initState();
  }

  @override
  void didUpdateWidget(DepBadge oldWidget) {
    color = widget.color;
    textColor = widget.textColor;
    child = widget.text != null ? Text(widget.text ?? '') : widget.child;
    counterShape = widget.shape;
    size = widget.size;
    super.didUpdateWidget(oldWidget);
  }

  @override
  Widget build(BuildContext context) {
    final BorderSide shapeBorder = widget.border != null
        ? widget.border!
        : BorderSide(
            color: color,
            width: 0,
          );

    ShapeBorder shape;

    if (counterShape == BadgeShape.pills) {
      shape = RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(50),
        side: shapeBorder,
      );
    } else if (counterShape == BadgeShape.square) {
      shape = RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(0),
        side: shapeBorder,
      );
    } else if (counterShape == BadgeShape.standard) {
      shape = RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(5),
        side: shapeBorder,
      );
    } else if (counterShape == BadgeShape.circle) {
      shape = RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(100),
        side: shapeBorder,
      );
    } else {
      shape = RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(5),
        side: shapeBorder,
      );
    }

    if (widget.size == DepSize.small) {
      height = size * 0.56;
      width = size * 0.73;
      fontSize = size * 0.31;
    } else if (widget.size == DepSize.medium) {
      height = size * 0.58;
      width = size * 0.76;
      fontSize = size * 0.34;
    } else if (widget.size == DepSize.large) {
      height = size * 0.6;
      width = size * 0.79;
      fontSize = size * 0.37;
    } else {
      height = size * 0.58;
      width = size * 0.76;
      fontSize = size * 0.34;
    }

    return SizedBox(
      height: height,
      width: counterShape == BadgeShape.circle ? height : width,
      child: Material(
        textStyle: TextStyle(
          color: textColor,
          fontSize: fontSize,
        ),
        shape: widget.borderShape ?? shape,
        color: color,
        type: MaterialType.button,
        child: Center(
          widthFactor: 1,
          heightFactor: 1,
          child: child,
        ),
      ),
    );
  }
}
