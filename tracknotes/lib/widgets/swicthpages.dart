// ignore_for_file: dead_code

import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:tracknotes/views/home.dart';
import 'package:tracknotes/views/onboarding.dart';

class SwitchPages extends StatefulWidget {
  const SwitchPages({Key? key}) : super(key: key);

  @override
  State<SwitchPages> createState() => _SwitchPagesState();
}

class _SwitchPagesState extends State<SwitchPages> {
  bool isFirst = true;

  Future getFirst() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    if (mounted) {
      setState(() {
        isFirst = prefs.getBool("isFirst") ?? true;
      });
    }
  }

  @override
  void initState() {
    getFirst();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return isFirst ? const OnBoarding() : const HomePage();
  }
}
