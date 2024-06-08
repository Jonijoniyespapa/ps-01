import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ps01/screen/home_screen.dart';

class Application extends StatelessWidget {
  const Application({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'PS01',
      theme: ThemeData(
        textTheme: GoogleFonts.akatabTextTheme(Theme.of(context).textTheme),
      ),
      home: const HomeScreen(),
    );
  }
}
