import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'splash.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: GoogleFonts.openSans(
                fontWeight: FontWeight.w900, color: Colors.black)
            .fontFamily,
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            fixedSize: const Size(325, 60),
            backgroundColor: Colors.transparent,
            shadowColor: Colors.transparent.withOpacity(0.1),
            side: const BorderSide(
              width: 4,
              color: Colors.blue,
            ),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15),
            ),
          ),
        ),
      ),
      title: 'UAS',
      home: const SplashScreenPage(),
    );
  }
}
