import 'text_custom.dart';
import 'package:flutter/material.dart';

import '../constants/palette.dart';

class RoundedElevatedButton extends StatelessWidget {
  final String text;
  final Function() onTap;
  final bool needInvertedColors;
  final double height;
  const RoundedElevatedButton({
    super.key,
    required this.text,
    required this.onTap,
    this.needInvertedColors = false,
    this.height = 50,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      width: MediaQuery.of(context).size.width,
      child: ElevatedButton(
        onPressed: onTap,
        style: ElevatedButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
          ),
          backgroundColor: needInvertedColors ? Palette.white : Palette.black,
        ),
        child: TextCustom(
          text: text,
          style: TextStyle(
            color: needInvertedColors ? Palette.black : Palette.white,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
