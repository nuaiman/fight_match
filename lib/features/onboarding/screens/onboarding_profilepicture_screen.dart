import 'package:fightmatch/features/dashboard/screens/dashboard_screen.dart';

import '../../../core/constants/icons_custom.dart';
import '../../../core/constants/palette.dart';
import '../../../core/constants/svgs.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../core/utils/nativators.dart';
import '../../../core/widgets/text_custom.dart';

class OnboardingprofilePictureScreen extends StatefulWidget {
  const OnboardingprofilePictureScreen({super.key});

  @override
  State<OnboardingprofilePictureScreen> createState() =>
      _OnboardingprofilePictureScreenState();
}

class _OnboardingprofilePictureScreenState
    extends State<OnboardingprofilePictureScreen> {
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
                    text: 'Add Profile Photo',
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.w700,
                      color: Palette.darkGreen,
                    ),
                  ),
                ),
                Stack(
                  children: [
                    CircleAvatar(
                      radius: 120,
                      backgroundColor: Colors.grey.shade300,
                      child: const Icon(
                        IconsCustom.profile,
                        size: 100,
                      ),
                    ),
                    Positioned(
                      bottom: 0,
                      right: 0,
                      child: Opacity(
                        opacity: 0.7,
                        child: CircleAvatar(
                          radius: 30,
                          backgroundColor: Colors.grey.shade800,
                          child: const Icon(
                            IconsCustom.camera,
                            color: Palette.white,
                            size: 30,
                          ),
                        ),
                      ),
                    ),
                  ],
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
            navigateAndRemoveUntil(context, const DashboardScreen());
          },
          child: SvgPicture.asset(Svgs.fiftyPercent),
        ),
      ),
    );
  }
}
