import 'package:flutter/material.dart';

class AppColors {
  AppColors._(); // this basically makes it a singleton

  static const kBlackColor = Colors.black;
  static const kWhiteColor = Colors.white;
  static const kBackgroundColor = Color(0xff28293D);
  static const kButtonColor = Color(0xff61FFFF);

  static const LinearGradient kPrimaryGradient = LinearGradient(
    colors: [Color(0xff4B4FA0), Color(0xff44488B)],
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
  );
}
