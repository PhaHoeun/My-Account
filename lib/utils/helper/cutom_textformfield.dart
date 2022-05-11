import 'package:flutter/material.dart';

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField({
    Key? key,
    this.hintText,
    this.labelText,
    this.onChanged,
    this.onSaved,
    this.validator,
    this.obscureText = false,
    this.suffixIcon,
    this.suffixText,
    this.fillColor,
    this.focusColor,
    this.focusNode,
  }) : super(key: key);
  final String? hintText;
  final String? labelText;
  final ValueChanged<String>? onChanged;
  final FormFieldSetter<String>? onSaved;
  final FormFieldValidator<String>? validator;
  final bool? obscureText;
  final Widget? suffixIcon;
  final String? suffixText;
  final Color? fillColor;
  final Color? focusColor;
  final FocusNode? focusNode;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscuringCharacter: 'ø',
      //ø •
      obscureText: obscureText!,
      validator: validator,
      onChanged: onChanged,
      onSaved: onSaved,
      decoration: InputDecoration(
        contentPadding: const EdgeInsets.only(top: 25, bottom: 25, left: 15),
        focusColor: focusColor,
        fillColor: fillColor,
        filled: true,
        label: null,
        hintText: hintText,
        labelText: labelText,
        suffixIcon: suffixIcon,
        suffixText: suffixText,
        enabledBorder: OutlineInputBorder(
          borderSide: const BorderSide(color: Colors.transparent),
          borderRadius: BorderRadius.circular(10),
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide.none,
        ),
      ),
    );
  }
}
