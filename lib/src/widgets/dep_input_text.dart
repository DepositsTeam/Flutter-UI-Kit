import 'package:deposits_ui_kit/deposits_ui_kit.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';

class CustomtextField extends StatefulWidget {
  final String? hint;
  final int? maxLines;
  final Widget? prefixIcon, suffixIcon;
  final TextEditingController? controller;
  final FormFieldValidator<String?>? validator;
  final ValueChanged<String?>? onChanged, onSaved, onSubmitted;
  final TextCapitalization? capitalization;
  final TextInputType? keyboardType;
  final TextInputAction? textInputAction;
  final InputDecoration? decoration;
  final TextStyle? hintStyle, style;
  final Function(String?)? valueTransformer;
  final List<TextInputFormatter>? inputFormatters;
  final FocusNode? focusNode;
  final TextAlign? textAlign;
  final Function()? onTap;
  final bool? readOnly, enabled, obscureText, showCursor, filled;
  final Color? fillColor, cursorColor, focusedBorderColor;
  final bool? hasError;

  const CustomtextField(
      {super.key,
      required this.hint,
      required this.controller,
      // required this.hasError,
      this.hasError = false,
      this.onChanged,
      this.onSaved,
      this.onTap,
      this.readOnly,
      this.filled = false,
      this.enabled,
      this.focusNode,
      this.valueTransformer,
      this.prefixIcon,
      this.suffixIcon,
      this.hintStyle,
      this.decoration,
      this.textAlign,
      this.onSubmitted,
      this.style,
      required this.focusedBorderColor,
      this.fillColor = Colors.white,
      this.showCursor = true,
      this.cursorColor,
      this.obscureText = false,
      this.keyboardType = TextInputType.text,
      this.validator,
      this.inputFormatters,
      this.maxLines = 1,
      this.textInputAction = TextInputAction.next,
      this.capitalization = TextCapitalization.none});

  @override
  State<CustomtextField> createState() => _CustomtextFieldState();
}

class _CustomtextFieldState extends State<CustomtextField> {
  @override
  Widget build(BuildContext context) {
    var defaultInputFormatters = [
      FilteringTextInputFormatter.deny(RegExp(r'\s')),
    ];
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Builder(builder: (context) {
          return FormBuilderTextField(
            name: widget.hint!,
            controller: widget.controller,
            validator: widget.validator,
            onTap: widget.onTap,
            enabled: widget.enabled ?? true,
            focusNode: widget.focusNode,
            readOnly: widget.readOnly ?? false,
            onChanged: widget.onChanged,
            onSaved: widget.onSaved,
            valueTransformer: widget.valueTransformer,
            textAlign: widget.textAlign ?? TextAlign.start,
            showCursor: widget.showCursor,
            cursorColor: widget.cursorColor ?? Colors.black,
            obscureText: widget.obscureText!,
            maxLines: widget.maxLines,
            inputFormatters: widget.inputFormatters ?? defaultInputFormatters,
            textInputAction: widget.textInputAction,
            textCapitalization: widget.capitalization!,
            keyboardType: widget.keyboardType,
            style: widget.style ??
                TextStyle(
                    fontFamily: preferedFont(DepFontName.sfproDisplay),
                    fontSize: (14),
                    fontWeight: FontWeight.w600,
                    color: const Color.fromRGBO(30, 32, 42, 1)),
            onSubmitted: widget.onSubmitted,
            decoration: widget.decoration ??
                InputDecoration(
                  errorStyle: const TextStyle(
                    fontSize: 0.0,
                    height: 0,
                  ),
                  // contentPadding: EdgeInsets.symmetric(
                  //     horizontal: (15),
                  //     vertical: Platform.isAndroid
                  //         ? ScreenUtil().setHeight(18)
                  //         : ScreenUtil().setHeight(15)),
                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                          color: widget.focusedBorderColor ?? cyan500),
                      borderRadius: const BorderRadius.all(Radius.circular(5))),
                  disabledBorder: const OutlineInputBorder(
                      borderSide: BorderSide(color: gray300),
                      borderRadius: BorderRadius.all(Radius.circular(5))),
                  enabledBorder: const OutlineInputBorder(
                      borderSide: BorderSide(color: gray300),
                      borderRadius: BorderRadius.all(Radius.circular(5))),
                  border: const OutlineInputBorder(
                      borderSide: BorderSide(color: gray300),
                      borderRadius: BorderRadius.all(Radius.circular(5))),
                  fillColor: widget.validator != null &&
                          widget.validator!(widget.controller!.text) != null
                      ? const Color.fromRGBO(255, 240, 242, 1)
                      : widget.fillColor,
                  filled: widget.hasError! ? true : false,
                  hintText: widget.hint,
                  suffixIcon: widget.suffixIcon == null
                      ? null
                      : Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10),
                          child: widget.suffixIcon,
                        ),
                  prefixIcon: widget.prefixIcon == null
                      ? null
                      : Padding(
                          padding: const EdgeInsets.only(right: 10),
                          child: widget.prefixIcon,
                        ),
                  hintStyle: widget.hintStyle ??
                      TextStyle(
                          fontFamily: preferedFont(DepFontName.sfproText),
                          fontSize: (14),
                          fontWeight: FontWeight.w400,
                          color: gray300),
                ),
          );
        }),
        verticalSpaceTiny,
        if (widget.hasError!)
          Builder(
            builder: (BuildContext context) {
              if (widget.validator != null &&
                  widget.validator!(widget.controller!.text) != null) {
                return Row(
                  children: [
                    const Icon(Icons.error,
                        color: Color.fromRGBO(214, 47, 75, 1)),
                    horizontalSpaceTiny,
                    DepText(
                      text: widget.validator!(widget.controller!.text)!,
                      fontFamily: preferedFont(DepFontName.sfproText),
                      txtColor: const Color(0XFFD62F4B),
                      fntweight: FontWeight.w400,
                      font: 12,
                    ),
                  ],
                );
              } else {
                return const SizedBox.shrink();
              }
            },
          ),
      ],
    );
  }
}
