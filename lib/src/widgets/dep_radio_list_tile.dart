import 'package:deposits_ui_kit/deposits_ui_kit.dart';
import 'package:flutter/material.dart';

class DepRadioListTile<T> extends StatelessWidget {
  /// [DepRadioListTile] is a list title of with [GFRadio] in it.
  const DepRadioListTile({
    Key? key,
    required this.value,
    required this.groupValue,
    required this.onChanged,
    this.size = DepSize.small,
    this.type = DepRadioType.basic,
    this.radioColor = primaryColor,
    this.activeBgColor = white,
    this.inactiveBgColor = white,
    this.activeBorderColor = gray400,
    this.inactiveBorderColor = gray400,
    this.position = DepPosition.end,
    this.activeIcon = const Icon(
      Icons.circle,
      size: 10,
      color: white,
    ),
    this.inactiveIcon,
    this.customBgColor = primaryColor,
    this.autofocus = false,
    this.focusNode,
    this.toggleable = false,
    this.titleText,
    this.subTitleText,
    this.color,
    this.avatar,
    this.title,
    this.subTitle,
    this.description,
    this.icon,
    this.padding = const EdgeInsets.all(8),
    this.margin = const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
    this.enabled = true,
    this.onTap,
    this.onLongPress,
    this.selected = false,
    this.focusColor,
    this.hoverColor,
  }) : super(key: key);

  final String? titleText;
  final String? subTitleText;
  final Color? color;
  final Widget? avatar;
  final Widget? title;
  final Widget? subTitle;
  final Widget? description;
  final Widget? icon;
  final EdgeInsets margin;
  final EdgeInsets padding;
  final bool enabled;
  final GestureTapCallback? onTap;
  final DepPosition position;
  final GestureLongPressCallback? onLongPress;
  final bool selected;
  final Color? focusColor;
  final Color? hoverColor;
  final bool autofocus;
  final FocusNode? focusNode;
  final DepRadioType type;

  /// type of [double] which is GFSize ie, small, medium and large and can use any double value
  final double size;

  /// type pf [Color] used to change the checkcolor when the checkbox is active
  final Color radioColor;

  /// type of [Color] used to change the backgroundColor of the active checkbox
  final Color activeBgColor;

  /// type of [Color] used to change the backgroundColor of the inactive checkbox
  final Color inactiveBgColor;

  /// type of [Color] used to change the border color of the active checkbox
  final Color activeBorderColor;

  /// type of [Color] used to change the border color of the inactive checkbox
  final Color inactiveBorderColor;

  /// Called when the user checks or unchecks the checkbox.
  final ValueChanged<dynamic>? onChanged;

  ///type of Widget used to change the  checkbox's active icon
  final Widget activeIcon;

  ///type of [Widget] used to change the  checkbox's inactive icon
  final Widget? inactiveIcon;

  /// type of [Color] used to change the background color of the custom active  checkbox only
  final Color customBgColor;

  /// The value represented by this radio button.
  final T value;

  /// The currently selected value for a group of radio buttons. Radio button is considered selected if its [value] matches the [groupValue].
  final T groupValue;

  /// sets the radio value
  final bool toggleable;

  /// Whether this radio button is checked. To control this value, set [value] and [groupValue] appropriately.
  bool get checked => value == groupValue;

  @override
  Widget build(BuildContext context) {
    final DepRadio radio = DepRadio(
      onChanged: onChanged,
      value: value,
      groupValue: groupValue,
      size: size,
      type: type,
      radioColor: radioColor,
      activeBgColor: activeBgColor,
      inactiveIcon: inactiveIcon,
      activeBorderColor: activeBorderColor,
      inactiveBgColor: inactiveBgColor,
      activeIcon: activeIcon,
      inactiveBorderColor: inactiveBorderColor,
      customBgColor: customBgColor,
      toggleable: toggleable,
    );
    return MergeSemantics(
      child: DepListTile(
        autofocus: autofocus,
        enabled: onChanged != null,
        focusNode: focusNode,
        onTap: onChanged != null
            ? () {
                if (toggleable && checked) {
                  onChanged!(null);
                  return;
                }
                if (!checked) {
                  onChanged!(value);
                }
              }
            : null,
        selected: selected,
        avatar: position == DepPosition.start ? radio : avatar,
        titleText: titleText,
        subTitle: subTitle,
        subTitleText: subTitleText,
        description: description,
        color: color,
        padding: padding,
        margin: margin,
        title: title,
        icon: position == DepPosition.end ? radio : icon,
      ),
    );
  }
}
