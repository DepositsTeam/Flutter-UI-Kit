import 'package:deposits_ui_kit/src/values/dep_colors.dart';
import 'package:deposits_ui_kit/src/values/dep_dimens.dart';
import 'package:deposits_ui_kit/src/values/dep_spacing.dart';
import 'package:flutter/material.dart';

class DepButton extends StatelessWidget {
  final String? title;
  final VoidCallback onPressed;
  final TextStyle? textStyle;
  final double height, minWidth;
  final double? textFontSize;
  final Widget? titleWidget;
  final Color? buttonColor, buttonBorderColor, textColor;
  final Color loaderColor;
  final bool addBorder;
  final bool isBusy,
      isDisabled,
      showSearchIcon,
      showDropDownIcon,
      isButtonCurved,
      isResponsive;

  const DepButton(
      {Key? key,
      this.title,
      required this.onPressed,
      this.textStyle,
      this.height = 55,
      this.minWidth = 250,
      this.buttonColor,
      this.buttonBorderColor,
      required this.textColor,
      this.loaderColor = white,
      this.titleWidget,
      this.textFontSize,
      this.addBorder = false,
      this.isBusy = false,
      this.isDisabled = false,
      this.showSearchIcon = false,
      this.isButtonCurved = false,
      this.isResponsive = false,
      this.showDropDownIcon = false})
      : assert(
          title == null || titleWidget == null,
          'Cannot provide both a title and a child\n'
          'To provide both, use "titleWidget: Text(title)".',
        ),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width:isResponsive?double.infinity : minWidth,
      height: height,
      child: ElevatedButton(
          onPressed: onPressed,
          style: ButtonStyle(
            elevation: MaterialStateProperty.all(0),
            minimumSize: MaterialStateProperty.resolveWith<Size>(
              (states) => isResponsive?  Size(double.infinity, height)  :Size(minWidth, height),
            ),
            shape: addBorder
                ? MaterialStateProperty.resolveWith<RoundedRectangleBorder>(
                    (states) => RoundedRectangleBorder(
                      borderRadius:
                          BorderRadius.circular(isButtonCurved ? 30 : 5),
                      side: BorderSide(
                        color: isDisabled ? (buttonColor == transparent
                                ? transparent
                                : buttonColor!.withOpacity(0.5)) : (buttonBorderColor ?? Colors.transparent),
                        width: 2,
                      ),
                    ),
                  )
                : MaterialStateProperty.resolveWith<RoundedRectangleBorder>(
                    (states) => RoundedRectangleBorder(
                      borderRadius:
                          BorderRadius.circular(isButtonCurved ? 30 : 5),
                    ),
                  ),
            //  AppTheme.theme.textButtonTheme.style!.shape,
            overlayColor: MaterialStateProperty.resolveWith<Color?>(
              (Set<MaterialState> states) {
                if (states.contains(MaterialState.pressed)) {
                  return Colors.transparent;
                }
                return null;
              },
            ),
            backgroundColor: MaterialStateProperty.resolveWith<Color?>(
              (Set<MaterialState> states) {
                if (states.contains(MaterialState.disabled)) {
                  return buttonColor!.withOpacity(.50);
                }
                return isDisabled
                    ? (buttonColor == transparent ? transparent :buttonColor!.withOpacity(0.5))
                    : (!isBusy ? (buttonColor == transparent ? transparent : buttonColor) : (buttonColor == transparent
                            ? transparent
                            : buttonColor!.withOpacity(0.5)));
              },
            ),
          ),
          child: !isBusy
              ? titleWidget ??
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      if (showSearchIcon) ...[
                        Icon(
                          Icons.search,
                          color: isDisabled
                              ? textColor!.withOpacity(0.5)
                              : textColor == buttonColor
                                  ? white
                                  : textColor,
                        ),
                        verticalSpaceSmall,
                      ],
                      Text(
                        title!,
                        style: textStyle ??
                            TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: textFontSize ?? fontSize14,
                              color: isDisabled
                                  ?  (textColor == buttonColor
                                      ? white
                                      : textColor!.withOpacity(0.5))
                                  : (textColor==buttonColor? white : (textColor ?? white)),
                            ),
                      ),
                      if (showDropDownIcon) ...[
                        verticalSpaceSmall,
                        Icon(
                          Icons.arrow_drop_down,
                          color: isDisabled
                              ? textColor!.withOpacity(0.5)
                              : textColor==buttonColor? white : textColor,
                        ),
                      ],
                    ],
                  )
              : SizedBox(
                  height: 20,
                  width: 20,
                  child: CircularProgressIndicator(
                    color: ((buttonColor == transparent || buttonColor == white ) ? textColor : loaderColor),
                  ),
                )),
    );
  }
}
