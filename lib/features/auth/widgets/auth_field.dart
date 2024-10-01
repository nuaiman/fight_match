import '../../../core/constants/icons_custom.dart';
import '../../../core/constants/svgs.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class AuthField extends StatefulWidget {
  final TextEditingController controller;
  final String hintText;
  final bool isPassword;

  const AuthField({
    super.key,
    required this.controller,
    required this.hintText,
    this.isPassword = false,
  });

  @override
  State<AuthField> createState() => _AuthFieldState();
}

class _AuthFieldState extends State<AuthField> {
  bool _obscureText = true;

  void _toggleVisibility() {
    setState(() {
      _obscureText = !_obscureText;
    });
  }

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: widget.controller,
      onTapOutside: (event) {
        FocusManager.instance.primaryFocus!.unfocus();
      },
      decoration: InputDecoration(
        hintText: widget.hintText,
        filled: true,
        fillColor: const Color(0xFFececec),
        border: const OutlineInputBorder(
          borderSide: BorderSide.none,
          borderRadius: BorderRadius.all(
            Radius.circular(16),
          ),
        ),
        suffixIcon: widget.isPassword
            ? _obscureText
                ? GestureDetector(
                    onTap: _toggleVisibility,
                    child: Padding(
                      padding: const EdgeInsets.all(10),
                      child: SvgPicture.asset(
                        Svgs.hide,
                      ),
                    ),
                  )
                : IconButton(
                    icon: const Icon(
                      IconsCustom.show,
                    ),
                    onPressed: _toggleVisibility,
                  )
            : null,
      ),
      keyboardType: widget.isPassword ? TextInputType.text : TextInputType.text,
      obscureText: widget.isPassword ? _obscureText : false,
      obscuringCharacter: '*',
    );
  }
}
