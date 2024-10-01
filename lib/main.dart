import 'core/constants/palette.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'features/auth/screens/auth_screen.dart';

void main() {
  runApp(const ProviderScope(child: FightMatchApp()));
}

class FightMatchApp extends StatelessWidget {
  const FightMatchApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Fight Match',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
        scaffoldBackgroundColor: Palette.white,
        appBarTheme: const AppBarTheme(
          backgroundColor: Palette.white,
          surfaceTintColor: Palette.white,
        ),
        fontFamily: 'SFPro',
      ),
      home: const AuthScreen(),
    );
  }
}
