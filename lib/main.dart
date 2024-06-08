import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:ps01/application.dart';

Future<void> main() async {
  //set orientation to portrait
  WidgetsFlutterBinding.ensureInitialized();
  await SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
  runApp(const Application());
}
