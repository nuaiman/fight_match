import 'package:flutter/material.dart';

class TextCustom extends StatelessWidget {
  final String text;
  final TextStyle? style;
  final TextAlign? textAlign;
  const TextCustom({
    super.key,
    required this.text,
    this.style,
    this.textAlign,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: textAlign,
      style: style,
    );
  }
}
