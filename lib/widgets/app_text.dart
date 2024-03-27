import 'package:flutter/material.dart';

class AppText extends StatelessWidget {
  final String text;
  final Color? color;
  final double? fontSize;
  final FontWeight? fontWeight;
  final TextAlign? textAlign;
  final TextOverflow? overflow;
  final TextStyle? style;
  const AppText({super.key, required this.text, this.color, this.fontSize, this.fontWeight, this.textAlign, this.overflow, this.style});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: style?.copyWith(
        color: color,
        fontSize: fontSize,
        fontWeight: fontWeight,
      ),
    );
  }
}