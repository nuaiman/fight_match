import '../../../core/utils/nativators.dart';
import 'login_screen.dart';
import 'signup_screen.dart';
import 'package:flutter/material.dart';

import '../../../core/widgets/rounded_elevated_buton.dart';
import '../../../core/widgets/text_custom.dart';

class AuthScreen extends StatelessWidget {
  const AuthScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Padding(
                padding: EdgeInsets.only(bottom: 48),
                child: TextCustom(
                  text: 'Welcome to our Fight matching social app',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 40,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              RoundedElevatedButton(
                text: 'Login with email',
                onTap: () {
                  navigate(context, const LoginScreen());
                },
              ),
              const Padding(
                padding: EdgeInsets.symmetric(vertical: 12),
                child: TextCustom(
                  text: 'OR',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              RoundedElevatedButton(
                text: 'Sign up',
                onTap: () {
                  navigate(context, const SignupScreen());
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
