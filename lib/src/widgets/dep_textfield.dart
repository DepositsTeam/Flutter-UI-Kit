
import 'package:flutter/services.dart';
import 'package:flutter/material.dart';
import 'package:deposits_ui_kit/deposits_ui_kit.dart';
class DepTextFieldWidget extends StatelessWidget {
  final String? labelText, hintText;
  final String? initialValue, prefixText, suffixText;
  final Widget? prefixIcon, suffixIcon, suffix;
  final TextInputType keyboardType;
  final FormFieldValidator<String?>? validator;
  final TextEditingController? controller;
  final ValueChanged<String?>? onChanged, onSaved;
  final int minLines, maxLines;
  final bool readOnly, addHint, enabled, obscureText;
  final bool? isDense;
  final Function()? onTap;
  final List<TextInputFormatter>? inputFormatters;
  final AutovalidateMode autovalidateMode;
  final BoxConstraints? suffixIconConstraints;
  final EdgeInsets? prefixIconPadding;
  final Color? fillColor;
  final TextInputAction? textInputAction;

  const DepTextFieldWidget(
      {super.key,
      this.labelText,
      this.hintText,
      this.controller,
      this.prefixIcon,
      this.suffixIcon,
      this.keyboardType = TextInputType.text,
      this.validator = validateEmpty,
      this.onChanged,
      this.onSaved,
      this.maxLines = 1,
      this.minLines = 1,
      this.inputFormatters,
      this.initialValue,
      this.readOnly = false,
      this.obscureText = false,
      this.onTap,
      this.suffix,
      this.enabled = true,
      this.autovalidateMode = AutovalidateMode.onUserInteraction,
      this.addHint = false,
      this.suffixIconConstraints,
      this.prefixText,
      this.suffixText,
      this.isDense,
      this.prefixIconPadding,
      this.fillColor,
      this.textInputAction});

  @override
  Widget build(BuildContext context) {
    const textStyle = TextStyle(
      color: gray400,
      fontSize: fontSize15,
    );

   const  hintStyle = TextStyle(
    fontSize: fontSize16,
    fontWeight: FontWeight.w400,
    color: gray200
  );

    return TextFormField(
      onTap: onTap,
      obscureText: obscureText,
      textInputAction: textInputAction,
      readOnly: readOnly,
      initialValue: initialValue,
      keyboardType: keyboardType,
      autovalidateMode: autovalidateMode,
      controller: controller,
      validator: validator,
      onChanged: onChanged,
      minLines: minLines,
      maxLines: maxLines,
      onSaved: onSaved,
      enabled: enabled,
      inputFormatters: inputFormatters,
      decoration: InputDecoration(
        suffix: suffix,
        fillColor: fillColor,
        filled: fillColor != null,
        isDense: isDense,
        contentPadding:
            const EdgeInsets.symmetric(vertical: 20.0, horizontal: 10.0),
        border: const OutlineInputBorder(),
        enabledBorder: const OutlineInputBorder(
          borderSide: BorderSide(color: cyan500),
        ),
        disabledBorder: const OutlineInputBorder(
          borderSide: BorderSide(color: red500),
        ),
        focusedBorder: const OutlineInputBorder(
          borderSide: BorderSide(color: cyan500),
        ),
        // alignLabelWithHint: maxLines == null,
        labelText: addHint
            ? null
            : ((controller?.text != null || !readOnly) ? labelText : null),
        hintText: hintText,
        hintStyle: hintStyle,
        prefixIconConstraints: const BoxConstraints(
          maxHeight: 40,
          maxWidth: 40,
        ),
        prefixIcon: prefixIcon == null
            ? null
            : Padding(
                padding: prefixIconPadding ??
                    const EdgeInsets.only(right: 10, left: 10),
                child: prefixIcon,
              ),
        prefixText: prefixText,
        suffixText: suffixText,
        prefixStyle: textStyle,
        suffixStyle: textStyle,
        suffixIcon: suffixIcon == null
            ? null
            : Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: suffixIcon,
              ),
        suffixIconConstraints: suffixIconConstraints ??
            const BoxConstraints(
              maxHeight: 40,
              maxWidth: 40,
            ),
      ),
    );
  }
}
