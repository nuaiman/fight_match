import '../../../core/constants/palette.dart';
import '../../../core/constants/svgs.dart';
import '../../../core/utils/nativators.dart';
import 'onboarding_dob_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../core/widgets/text_custom.dart';

class OnboardingGenderScreen extends StatefulWidget {
  const OnboardingGenderScreen({super.key});

  @override
  State<OnboardingGenderScreen> createState() => _OnboardingGenderScreenState();
}

class _OnboardingGenderScreenState extends State<OnboardingGenderScreen> {
  @override
  void dispose() {
    super.dispose();
  }

  int? _selectedGender;

  void chooseGender(int i) {
    setState(() {
      _selectedGender = i;
    });
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
                    text: 'What is your gender?',
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.w700,
                      color: Palette.darkGreen,
                    ),
                  ),
                ),
                AspectRatio(
                  aspectRatio: 16 / 9,
                  child: Row(
                    children: [
                      Expanded(
                        child: GestureDetector(
                          onTap: () {
                            chooseGender(1);
                          },
                          child: Card(
                            color: _selectedGender == 1
                                ? Palette.darkGreen
                                : Palette.inactive,
                            surfaceTintColor: Palette.darkGreen,
                            child: Padding(
                              padding: const EdgeInsets.symmetric(vertical: 16),
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Icon(
                                    Icons.male,
                                    color: _selectedGender == 1
                                        ? Palette.white
                                        : Palette.black,
                                    size: 100,
                                  ),
                                  TextCustom(
                                    text: 'Male',
                                    style: TextStyle(
                                      color: _selectedGender == 1
                                          ? Palette.white
                                          : Palette.inactiveGreen,
                                      fontWeight: FontWeight.bold,
                                      fontFamily: 'Inter',
                                      fontSize: 24,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        child: GestureDetector(
                          onTap: () {
                            chooseGender(0);
                          },
                          child: Card(
                            color: _selectedGender == 0
                                ? Palette.darkGreen
                                : Palette.inactive,
                            surfaceTintColor: Palette.darkGreen,
                            child: Padding(
                              padding: const EdgeInsets.symmetric(vertical: 16),
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Icon(
                                    Icons.female,
                                    color: _selectedGender == 0
                                        ? Palette.white
                                        : Palette.black,
                                    size: 100,
                                  ),
                                  TextCustom(
                                    text: 'Female',
                                    style: TextStyle(
                                      color: _selectedGender == 0
                                          ? Palette.white
                                          : Palette.inactiveGreen,
                                      fontWeight: FontWeight.bold,
                                      fontFamily: 'Inter',
                                      fontSize: 24,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
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
            navigate(context, const OnboardingDobScreen());
          },
          child: SvgPicture.asset(Svgs.tenPercent),
        ),
      ),
    );
  }
}
