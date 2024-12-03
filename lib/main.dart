import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sabya_tech/pages/home_page.dart';

void main() {
  runApp(const MyApp());
}

final theme = ThemeData(
  useMaterial3: true,
  brightness: Brightness.light,
  colorScheme: ColorScheme.fromSeed(seedColor: myColor),
  textTheme: GoogleFonts.poppinsTextTheme(),
);
const Color myColor = Color(0xFFFFF4C1);

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      color: myColor,
      theme: theme,
      home: const HomePage(),
    );
  }
}
