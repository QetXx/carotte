// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';
import 'package:tracknotes/views/auth/authentication.dart';

class Welcoome extends StatelessWidget {
  const Welcoome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xff2C3079),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Lottie.asset('assets/lotties/welcome.json', fit: BoxFit.cover),
          const SizedBox(
            height: 100,
          ),
          Column(
            children: [
              Container(
                alignment: Alignment.centerRight,
                margin:
                    const EdgeInsets.symmetric(horizontal: 40, vertical: 10),
                child: RaisedButton(
                  color: Colors.white10,
                  onPressed: () {
                    Get.to(
                      const Authentication(),
                      transition: Transition.cupertino,
                      duration: const Duration(milliseconds: 100),
                      popGesture: true,
                    );
                  },
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  textColor: Colors.white,
                  padding: const EdgeInsets.all(0),
                  child: Container(
                    alignment: Alignment.center,
                    height: 50.0,
                    // width: size.width * 1.5,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.0),
                        // gradient: const LinearGradient(colors: [
                        //   Colors.white10,
                        //   Colors.white10,
                        // ]),
                        color: Colors.white10),
                    padding: const EdgeInsets.all(0),
                    child: const Text(
                      "Etablissement",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontFamily: "poppins",
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
          Container(
            alignment: Alignment.centerRight,
            margin: const EdgeInsets.symmetric(horizontal: 40, vertical: 10),
            child: RaisedButton(
              color: Colors.white10,
              onPressed: () {
                Get.to(
                  const Authentication(),
                  transition: Transition.cupertino,
                  duration: const Duration(milliseconds: 100),
                  popGesture: true,
                );
              },
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0),
              ),
              textColor: Colors.white,
              padding: const EdgeInsets.all(0),
              child: Container(
                alignment: Alignment.center,
                height: 50.0,
                // width: size.width * 1.5,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.0),
                    // gradient: const LinearGradient(colors: [
                    //   Colors.white10,
                    //   Colors.white10,
                    // ]),
                    color: Colors.white10),
                padding: const EdgeInsets.all(0),
                child: const Text(
                  "Enseignant",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontFamily: "poppins",
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ),
          Container(
            alignment: Alignment.centerRight,
            margin: const EdgeInsets.symmetric(horizontal: 40, vertical: 10),
            child: RaisedButton(
              color: Colors.white10,
              onPressed: () {
                Get.to(
                  const Authentication(),
                  transition: Transition.cupertino,
                  duration: const Duration(milliseconds: 100),
                  popGesture: true,
                );
              },
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0),
              ),
              textColor: Colors.white,
              padding: const EdgeInsets.all(0),
              child: Container(
                alignment: Alignment.center,
                height: 50.0,
                // width: size.width * 1.5,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.0),
                    // gradient: const LinearGradient(colors: [
                    //   Colors.white10,
                    //   Colors.white10,
                    // ]),
                    color: Colors.white10),
                padding: const EdgeInsets.all(0),
                child: const Text(
                  "Parent",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontFamily: "poppins",
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
