import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton(
      {Key? key, this.buttonName, this.style, this.color, this.onTap})
      : super(key: key);
  final String? buttonName;
  final TextStyle? style;
  final Color? color;
  final GestureTapCallback? onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: 380,
        height: 60,
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Center(
            child: Text(
          "$buttonName",
          style: style,
        )),
      ),
    );
  }
}
