import 'package:deposits_ui_kit/deposits_ui_kit.dart';
import 'package:flutter/material.dart';

class DepRadio<T> extends StatefulWidget {
  /// [DepRadio] is one type of selection indicator in a list of options.
  const DepRadio(
      {Key? key,
      required this.value,
      required this.groupValue,
      required this.onChanged,
      this.size = DepSize.SMALL,
      this.type = DepRadioType.basic,
      this.radioColor = white,
      this.activeBgColor = primaryColor,
      this.inactiveBgColor = white,
      this.activeBorderColor = gray400,
      this.inactiveBorderColor = gray400,
      this.activeIcon = const Icon(
        Icons.circle,
        size: 10,
        color: white,
      ),
      this.inactiveIcon,
      this.customBgColor = primaryColor,
      this.autofocus = false,
      this.focusNode,
      this.toggleable = false})
      : super(key: key);

  final DepRadioType type;
  final double size;
  final Color radioColor;
  final Color activeBgColor;
  final Color inactiveBgColor;
  final Color activeBorderColor;
  final Color inactiveBorderColor;
  final ValueChanged<T>? onChanged;
  final Widget activeIcon;
  final Widget? inactiveIcon;
  final Color customBgColor;
  final bool autofocus;
  final FocusNode? focusNode;
  final T value;
  final T groupValue;
  final bool toggleable;

  @override
  _GFRadioState<T> createState() => _GFRadioState<T>();
}

class _GFRadioState<T> extends State<DepRadio<T>> with TickerProviderStateMixin {
  bool get enabled => widget.onChanged != null;
  bool selected = false;
  T? groupValue;

  void onStatusChange() {
    groupValue = widget.value;
    _handleChanged(widget.value == groupValue);
  }

  void _handleChanged(bool selected) {
    if (selected) {
      widget.onChanged!(widget.value);
    }
  }

  @override
  Widget build(BuildContext context) {
    selected = widget.value == widget.groupValue;
    return InkWell(
        borderRadius:
            widget.type == DepRadioType.basic && widget.type == DepRadioType.blunt
                ? BorderRadius.circular(50)
                : widget.type == DepRadioType.square
                    ? BorderRadius.circular(0)
                    : BorderRadius.circular(10),
        enableFeedback: enabled,
        onTap: onStatusChange,
        child: Container(
            height: widget.size,
            width: widget.size,
            decoration: BoxDecoration(
                color: selected ? widget.activeBgColor : widget.inactiveBgColor,
                borderRadius: widget.type == DepRadioType.basic
                    ? BorderRadius.circular(50)
                    : widget.type == DepRadioType.square
                        ? BorderRadius.circular(0)
                        : BorderRadius.circular(10),
                border: Border.all(
                    color: selected
                        ? widget.activeBorderColor
                        : widget.inactiveBorderColor)),
            child: selected
                ? widget.type == DepRadioType.basic ||
                        widget.type == DepRadioType.square
                    ? Stack(
                        children: <Widget>[
                          Container(
                            alignment: Alignment.center,
                          ),
                          Container(
                            margin: const EdgeInsets.all(5),
                            alignment: Alignment.center,
                            width: widget.size * 0.7,
                            height: widget.size * 0.7,
                            decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: widget.radioColor),
                          )
                        ],
                      )
                    : widget.type == DepRadioType.blunt
                        ? Stack(
                            children: <Widget>[
                              Container(
                                alignment: Alignment.center,
                              ),
                              Container(
                                margin: const EdgeInsets.all(5),
                                alignment: Alignment.center,
                                width: widget.size * 0.8,
                                height: widget.size * 0.8,
                                decoration: BoxDecoration(
                                    borderRadius: const BorderRadius.all(
                                        Radius.circular(50)),
                                    color: widget.customBgColor),
                              )
                            ],
                          )
                        : widget.type == DepRadioType.custom
                            ? widget.activeIcon
                            : widget.inactiveIcon
                : widget.inactiveIcon));
  }
}
