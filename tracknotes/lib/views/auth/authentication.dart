import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Authentication extends StatelessWidget {
  const Authentication({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            flex: 2,
            child: Container(
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/images/mooo.jpeg'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
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
                        "Je m'inscris",
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
                        "Je me connecte",
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
          )
        ],
      ),
    );
  }
}
