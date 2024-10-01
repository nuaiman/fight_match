import '../../../core/constants/svgs.dart';
import '../../../core/utils/nativators.dart';
import 'forgot_password_screen.dart';
import '../widgets/auth_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../core/widgets/rounded_elevated_buton.dart';
import '../../../core/widgets/text_custom.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
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
              crossAxisAlignment: CrossAxisAlignment.start,
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
                const Padding(
                  padding: EdgeInsets.symmetric(vertical: 24),
                  child: TextCustom(
                    text: 'Login with email',
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
                ListTile(
                  contentPadding: EdgeInsets.zero,
                  title: const Padding(
                    padding: EdgeInsets.only(bottom: 8),
                    child: TextCustom(text: 'Email'),
                  ),
                  subtitle: AuthField(
                    controller: _emailController,
                    hintText: 'abcdefg@example.com',
                  ),
                ),
                ListTile(
                  contentPadding: EdgeInsets.zero,
                  title: const Padding(
                    padding: EdgeInsets.only(bottom: 8),
                    child: TextCustom(text: 'Password'),
                  ),
                  subtitle: AuthField(
                    isPassword: true,
                    controller: _passwordController,
                    hintText: '******',
                  ),
                ),
                ListTile(
                  onTap: () {
                    navigate(context, const ForgotPasswordScreen());
                  },
                  contentPadding: EdgeInsets.zero,
                  title: const TextCustom(
                    text: 'Forgot Password?',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
                SizedBox(height: MediaQuery.of(context).size.height * 0.35),
                Padding(
                  padding: const EdgeInsets.only(bottom: 24),
                  child: RoundedElevatedButton(
                    text: 'Log in',
                    onTap: () {},
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
