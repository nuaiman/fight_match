import '../../../core/constants/palette.dart';
import '../../../core/constants/svgs.dart';
import '../../../core/utils/nativators.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../core/widgets/text_custom.dart';
import 'onboarding_profilepicture_screen.dart';

class OnboardingZipScreen extends StatefulWidget {
  const OnboardingZipScreen({super.key});

  @override
  State<OnboardingZipScreen> createState() => _OnboardingZipScreenState();
}

class _OnboardingZipScreenState extends State<OnboardingZipScreen> {
  final _zipController = TextEditingController();

  @override
  void dispose() {
    _zipController.dispose();
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
                    text: 'Zip code',
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.w700,
                      color: Palette.darkGreen,
                    ),
                  ),
                ),
                TextField(
                  controller: _zipController,
                  onTapOutside: (event) {
                    FocusManager.instance.primaryFocus!.unfocus();
                  },
                  decoration: const InputDecoration(
                    hintText: 'zip code',
                    hintStyle: TextStyle(
                      color: Palette.inactiveGreen,
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
            navigate(context, const OnboardingprofilePictureScreen());
          },
          child: SvgPicture.asset(Svgs.fourtyPercent),
        ),
      ),
    );
  }
}
