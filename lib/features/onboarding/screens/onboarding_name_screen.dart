import '../../../core/constants/palette.dart';
import '../../../core/constants/svgs.dart';
import '../../../core/utils/nativators.dart';
import 'onboarding_gender_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../core/widgets/text_custom.dart';

class OnboardingNameScreen extends StatefulWidget {
  const OnboardingNameScreen({super.key});

  @override
  State<OnboardingNameScreen> createState() => _OnboardingNameScreenState();
}

class _OnboardingNameScreenState extends State<OnboardingNameScreen> {
  final _nameController = TextEditingController();

  @override
  void dispose() {
    _nameController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 8),
                      child: GestureDetector(
                        onTap: () {
                          Navigator.of(context).pop();
                        },
                        child: SvgPicture.asset(Svgs.circularBackButton),
                      ),
                    ),
                  ],
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(vertical: 24),
                  child: TextCustom(
                    text: 'What is your name?',
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.w700,
                      color: Palette.darkGreen,
                    ),
                  ),
                ),
                TextField(
                  controller: _nameController,
                  onTapOutside: (event) {
                    FocusManager.instance.primaryFocus!.unfocus();
                  },
                  decoration: const InputDecoration(
                    hintText: 'John Doe',
                    hintStyle: TextStyle(
                      color: Palette.darkGreen,
                      fontSize: 24,
                      fontFamily: 'WorkSans',
                      fontWeight: FontWeight.bold,
                    ),
                    filled: true,
                    fillColor: Color(0xFFececec),
                    contentPadding:
                        EdgeInsets.symmetric(vertical: 60.0, horizontal: 16),
                    border: OutlineInputBorder(
                      borderSide: BorderSide(color: Palette.darkGreen),
                      borderRadius: BorderRadius.all(
                        Radius.circular(16),
                      ),
                    ),
                  ),
                  keyboardType: TextInputType.text,
                  style: const TextStyle(
                    color: Palette.darkGreen,
                    fontSize: 24,
                    fontFamily: 'WorkSans',
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.only(bottom: 24),
        child: GestureDetector(
          onTap: () {
            navigate(context, const OnboardingGenderScreen());
          },
          child: SvgPicture.asset(Svgs.zeroPercent),
        ),
      ),
    );
  }
}
