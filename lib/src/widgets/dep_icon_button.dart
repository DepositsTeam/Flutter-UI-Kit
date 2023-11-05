import 'dart:math' as math;
import 'package:flutter/material.dart';
import 'package:deposits_ui_kit/deposits_ui_kit.dart';

class DepIconButton extends StatefulWidget {
  /// Create icon buttons of all types. check out [DepButton] for buttons
  const DepIconButton({
    super.key,
    this.iconSize = 0.0,
    this.padding = const EdgeInsets.all(8),
    this.alignment = Alignment.center,
    required this.icon,
    this.focusColor,
    this.hoverColor,
    this.highlightColor,
    this.splashColor,
    this.disabledColor,
    required this.onPressed,
    this.focusNode,
    this.autofocus = false,
    this.tooltip,
    this.type = DepButtonType.solid,
    this.shape = DepIconButtonShape.standard,
    this.color = primaryColor,
    this.borderShape,
    this.boxShadow,
    this.size = DepSize.medium,
    this.buttonBoxShadow,
    this.borderSide,
  });

  /// The size of the icon inside the button.
  final double iconSize;

  /// The padding around the button's icon.
  final EdgeInsetsGeometry padding;

  /// Defines how the icon is positioned within the IconButton.
  final AlignmentGeometry alignment;

  /// The icon to display inside the button.
  final Widget icon;

  /// The color for the button's icon when it has the input focus.
  final Color? focusColor;

  /// The color for the button's icon when a pointer is hovering over it.
  final Color? hoverColor;

  /// Button type of [DepButtonType] i.e, solid, outline, outline2x transparent
  final DepButtonType type;

  /// Button type of [DepIconButtonShape] i.e, standard, pills, square, shadow, icons
  final DepIconButtonShape shape;

  /// Pass [DepColors] or [Color]
  final Color color;

  /// Pass [DepColors] or [Color]. The primary color of the button when the button is in the down (pressed) state.
  final Color? splashColor;

  /// Pass [DepColors] or [Color]. The secondary color of the button when the button is in the down (pressed) state.
  final Color? highlightColor;

  /// Pass [DepColors] or [Color]. The color to use for the icon inside the button, if the icon is disabled.
  final Color? disabledColor;

  /// The callback that is called when the button is tapped or otherwise activated.
  final VoidCallback? onPressed;

  /// {@macro flutter.widgets.Focus.focusNode}
  final FocusNode? focusNode;

  /// {@macro flutter.widgets.Focus.autofocus}
  final bool autofocus;

  /// Text that describes the action that will occur when the button is pressed.
  final String? tooltip;

  /// The box shadow for the button's [Material], if DepButtonType is solid
  final BoxShadow? boxShadow;

  /// The shape and border for the button's [Material].
  final ShapeBorder? borderShape;

  /// size of [double] or [DepSize] i.e, 1.2, small, medium, large etc.
  final double size;

  /// on true state default box shadow appears around button, if DepButtonType is solid
  final bool? buttonBoxShadow;

  /// The border side for the button's [Material].
  final BorderSide? borderSide;

  @override
  DepIconButtonState createState() => DepIconButtonState();
}

class DepIconButtonState extends State<DepIconButton> {
  late Color color;
  Function? onPressed;
  late DepButtonType type;
  late DepIconButtonShape shape;
  BoxShadow? boxShadow;
  double? height;
  double? width;
  double iconPixel = 18;

  @override
  void initState() {
    color = widget.color;
    onPressed = widget.onPressed;
    type = widget.type;
    shape = widget.shape;
    super.initState();
  }

  Color getBorderColor() {
    if (widget.onPressed != null) {
      return color;
    } else {
      if (widget.disabledColor != null) {
        return widget.disabledColor!;
      } else {
        return color.withOpacity(0.48);
      }
    }
  }

  Color? getDisabledFillColor() {
    if (widget.type == DepButtonType.transparent ||
        widget.type == DepButtonType.outline ||
        widget.type == DepButtonType.outline2x) {
      return Colors.transparent;
    }
    if (widget.disabledColor != null) {
      return widget.disabledColor;
    } else {
      return color.withOpacity(0.48);
    }
  }

  Color? getColor() {
    if (widget.type == DepButtonType.transparent ||
        widget.type == DepButtonType.outline ||
        widget.type == DepButtonType.outline2x) {
      return Colors.transparent;
    } else {
      return color;
    }
  }

  Color? getIconColor() {
    if (widget.type == DepButtonType.transparent ||
        widget.type == DepButtonType.outline ||
        widget.type == DepButtonType.outline2x) {
      return widget.onPressed != null
          ? color == transparent
              ? black
              : color
          : color.withOpacity(0.48);
    } else if (color == transparent) {
      return widget.onPressed != null ? black : white;
    } else {
      return white;
    }
  }

  @override
  Widget build(BuildContext context) {
    assert(debugCheckHasMaterial(context));

    final Color themeColor =
        Theme.of(context).colorScheme.onSurface.withOpacity(0.12);
    final BorderSide outlineBorder = BorderSide(
      color: widget.borderSide == null
          ? getBorderColor()
          : widget.borderSide!.color,
      width: (widget.borderSide?.width ?? (widget.type == DepButtonType.outline2x
              ? 2.0
              : 1.0)),
    );

    final BorderSide shapeBorder = widget.type == DepButtonType.outline ||
            widget.type == DepButtonType.outline2x
        ? outlineBorder
        : widget.borderSide ??
            BorderSide(
              color: color,
              width: 0,
            );

    ShapeBorder? shapeBorderType;

    if (shape == DepIconButtonShape.pills) {
      shapeBorderType = RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
        side: shapeBorder,
      );
    } else if (shape == DepIconButtonShape.square) {
      shapeBorderType = RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(0),
        side: shapeBorder,
      );
    } else if (shape == DepIconButtonShape.standard) {
      shapeBorderType = RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(3),
        side: shapeBorder,
      );
    } else if (shape == DepIconButtonShape.circle) {
      shapeBorderType = RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(50),
        side: shapeBorder,
      );
    }

    if (widget.size == DepSize.small) {
      height = 30.0;
      width = 30.0;
      iconPixel = 18.0;
    } else if (widget.size == DepSize.medium) {
      height = 35.0;
      width = 35.0;
      iconPixel = 28.0;
    } else if (widget.size == DepSize.large) {
      height = 40.0;
      width = 40.0;
      iconPixel = 38.0;
    }

    Widget result = Container(
      // height: widget.shape == DepIconButtonShape.circle ? height + 6.0 : height,
      // width: widget.shape == DepIconButtonShape.pills
      //     ? width + 10
      //     : widget.shape == DepIconButtonShape.circle
      //         ? height + 6
      //         : width,
      padding: widget.padding,
      child: SizedBox(
        height: widget.iconSize != 0 ? widget.iconSize : iconPixel,
        width: widget.iconSize != 0 ? widget.iconSize : iconPixel,
        child: Align(
          alignment: Alignment.center,
          child: IconTheme.merge(
            data: IconThemeData(
              size: widget.iconSize > 0.0 ? widget.iconSize : iconPixel,
              color: getIconColor(),
            ),
            child: widget.icon,
          ),
        ),
      ),
    );

    if (widget.tooltip != null) {
      result = Tooltip(
        message: widget.tooltip!,
        child: result,
      );
    }

    BoxDecoration? getBoxShadow() {
      if (widget.type != DepButtonType.transparent) {
        if (widget.boxShadow == null && widget.buttonBoxShadow != true) {
          return null;
        } else {
          return BoxDecoration(
              color: widget.onPressed != null
                  ? getColor()
                  : getDisabledFillColor(),
              borderRadius: widget.shape == DepIconButtonShape.circle
                  ? BorderRadius.circular(50)
                  : widget.shape == DepIconButtonShape.standard
                      ? BorderRadius.circular(3)
                      : widget.shape == DepIconButtonShape.pills
                          ? BorderRadius.circular(20)
                          : BorderRadius.zero,
              boxShadow: [
                widget.boxShadow == null && widget.buttonBoxShadow == true
                    ? BoxShadow(
                        color: themeColor,
                        blurRadius: 1.5,
                        spreadRadius: 2,
                        offset: Offset.zero,
                      )
                    : widget.boxShadow ??
                        BoxShadow(
                          color: Theme.of(context).canvasColor,
                          blurRadius: 0,
                          spreadRadius: 0,
                          offset: Offset.zero,
                        )
              ]);
        }
      }
      return null;
    }

    return Semantics(
      button: true,
      enabled: widget.onPressed != null,
      child: Focus(
        focusNode: widget.focusNode,
        autofocus: widget.autofocus,
        child: Container(
          // height:
          //     widget.shape == DepIconButtonShape.circle ? height + 6 : height,
          // width: widget.shape == DepIconButtonShape.pills
          //     ? width + 10
          //     : widget.shape == DepIconButtonShape.circle
          //         ? height + 6
          //         : width,
          decoration:
              widget.type == DepButtonType.solid ? getBoxShadow() : null,
          child: Material(
            shape: widget.type == DepButtonType.transparent
                ? null
                : widget.borderShape ?? shapeBorderType,
            color:
                widget.onPressed != null ? getColor() : getDisabledFillColor(),
            type: widget.type == DepButtonType.transparent
                ? MaterialType.transparency
                : MaterialType.button,
            child: InkResponse(
              onTap: widget.onPressed,
              focusColor: widget.focusColor ?? Theme.of(context).focusColor,
              hoverColor: widget.hoverColor ?? Theme.of(context).hoverColor,
              highlightColor:
                  widget.highlightColor ?? Theme.of(context).highlightColor,
              splashColor: widget.splashColor ?? Theme.of(context).splashColor,
              radius: math.max(
                  Material.defaultSplashRadius,
                  (widget.iconSize > 0.0
                          ? widget.iconSize
                          : iconPixel +
                              math.min(
                                widget.padding.horizontal,
                                widget.padding.vertical,
                              )) *
                      0.7),
              child: result,
            ),
          ),
        ),
      ),
    );
  }
}
