import 'package:bottom_picker/bottom_picker.dart';
import '../../../core/constants/icons_custom.dart';
import '../../../core/constants/palette.dart';
import '../../../core/constants/svgs.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:intl/intl.dart';

import '../../../core/utils/nativators.dart';
import '../../../core/widgets/text_custom.dart';
import 'onboarding_location_screen.dart';

class OnboardingDobScreen extends StatefulWidget {
  const OnboardingDobScreen({super.key});

  @override
  State<OnboardingDobScreen> createState() => _OnboardingDobScreenState();
}

class _OnboardingDobScreenState extends State<OnboardingDobScreen> {
  @override
  void dispose() {
    super.dispose();
  }

  DateTime? _selectedDate = DateTime.now();

  void _showDatePickerBottomSheet(BuildContext context) {
    showModalBottomSheet(
      context: context,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(16)),
      ),
      backgroundColor: Palette.white,
      builder: (BuildContext context) {
        return BottomPicker.date(
          displayCloseIcon: false,
          pickerTitle: const TextCustom(
            text: '',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 15,
            ),
          ),
          dismissable: true,
          height: MediaQuery.of(context).size.height * 0.3,
          backgroundColor: Palette.inactive,
          displaySubmitButton: false,
          dateOrder: DatePickerDateOrder.dmy,
          initialDateTime: DateTime.now(),
          maxDateTime: DateTime.now(),
          minDateTime: DateTime(1920),
          pickerTextStyle: const TextStyle(
            color: Palette.black,
            fontWeight: FontWeight.bold,
            fontSize: 18,
          ),
          onChange: (index) {
            setState(() {
              _selectedDate = index;
            });
          },
          // bottomPickerTheme: BottomPickerTheme.heavyRain,
        );
      },
    );
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
                    text: 'Your date of birth',
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
                  child: Card(
                    color: Palette.inactive,
                    surfaceTintColor: Palette.inactive,
                    child: Center(
                      child: _selectedDate == null
                          ? null
                          : TextCustom(
                              text: DateFormat('dd').format(_selectedDate!),
                              style: const TextStyle(
                                color: Palette.darkGreen,
                                fontWeight: FontWeight.bold,
                                fontFamily: 'Inter',
                                fontSize: 52,
                              ),
                            ),
                    ),
                  ),
                ),
                Card(
                  color: Palette.inactive,
                  surfaceTintColor: Palette.inactive,
                  child: ListTile(
                    title: _selectedDate == null
                        ? null
                        : TextCustom(
                            text: DateFormat('MMMM / dd / yyyy')
                                .format(_selectedDate!),
                            style: const TextStyle(
                              color: Palette.darkGreen,
                              fontWeight: FontWeight.bold,
                              fontFamily: 'Inter',
                            ),
                          ),
                    trailing: IconButton(
                      onPressed: () {
                        _showDatePickerBottomSheet(context);
                      },
                      icon: const Icon(IconsCustom.calendar),
                    ),
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
            navigate(context, const OnboardingLocationScreen());
          },
          child: SvgPicture.asset(Svgs.twentyPercent),
        ),
      ),
    );
  }
}
