import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    Key? key,
    this.hintText,
    this.onChanged,
    this.onSaved,
    this.validator,
    this.surffixText,
    this.prefixText,
    this.label,
    this.initialValue,
  }) : super(key: key);
  final Widget? label;
  final String? hintText;
  final String? surffixText;
  final String? prefixText;
  final String? initialValue;
  final ValueChanged<String>? onChanged;
  final FormFieldSetter<String>? onSaved;
  final FormFieldValidator<String>? validator;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        left: 20,
        right: 20,
        top: 20,
      ),
      child: TextFormField(
        initialValue: initialValue,
        onChanged: onChanged,
        onSaved: onSaved,
        validator: validator,
        decoration: InputDecoration(
          label: label,
          hintText: hintText,
          prefixText: prefixText,
          prefixStyle: TextStyle(color: Colors.grey.shade600),
          suffixText: surffixText,
          suffixStyle: const TextStyle(
            color: Colors.red,
          ),
          // enabledBorder: OutlineInputBorder(
          //   borderSide: const BorderSide(
          //     width: 1,
          //     color: Colors.grey,
          //   ),
          //   borderRadius: BorderRadius.circular(10),
          // ),
          // focusedBorder: OutlineInputBorder(
          //   borderSide: const BorderSide(
          //     width: 1,
          //     color: Colors.blue,
          //   ),
          //   borderRadius: BorderRadius.circular(10),
          // ),

          border: OutlineInputBorder(
            borderSide: const BorderSide(
              width: 1,
              color: Colors.grey,
            ),
            borderRadius: BorderRadius.circular(10),
          ),
          contentPadding: const EdgeInsets.symmetric(
            vertical: 20,
            horizontal: 20,
          ),
        ),
      ),
    );
  }
}
