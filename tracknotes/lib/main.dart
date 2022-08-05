import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:tracknotes/screens/home.dart';
import 'package:tracknotes/screens/onboarding.dart';

late bool isFirst = true;
void main() async {
  runApp(const MyApp());

  final prefs = await SharedPreferences.getInstance();
  isFirst = prefs.getBool('isFirst') ?? true;
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: "Suivi Notes",
      locale: Get.deviceLocale,
      debugShowCheckedModeBanner: false,
      home: const SwitchPages(),
    );
  }
}

class SwitchPages extends StatelessWidget {
  const SwitchPages({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return isFirst ? const OnBoarding() : HomePage();
  }
}
