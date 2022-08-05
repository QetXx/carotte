import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:tracknotes/screens/home.dart';
import 'package:tracknotes/screens/onboarding.dart';

late bool isFirst;
void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  final prefs = await SharedPreferences.getInstance();
  isFirst = prefs.getBool('isFirst') ?? true;

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: "Suivi Notes",
      locale: Get.deviceLocale,
      debugShowCheckedModeBanner: false,
      home: const SwitchPages(),
      theme: ThemeData(
        scaffoldBackgroundColor: const Color.fromARGB(255, 3, 46, 80),
      ),
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
