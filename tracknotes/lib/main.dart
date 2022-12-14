import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tracknotes/themes/theme.dart';
import 'package:tracknotes/widgets/swicthpages.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
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
        home: const MySplashScreen(),
        theme: ThemeCarotte.darkTheme);
  }
}

class MySplashScreen extends StatefulWidget {
  const MySplashScreen({Key? key}) : super(key: key);

  @override
  State<MySplashScreen> createState() => _MySplashScreenState();
}

class _MySplashScreenState extends State<MySplashScreen> {
  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(
      splash: 'assets/images/logo 2.png',
      splashIconSize: 300,
      backgroundColor: const Color(0xff2C3079),
      nextScreen: const SwitchPages(),
      splashTransition: SplashTransition.fadeTransition,
    );
  }
}
