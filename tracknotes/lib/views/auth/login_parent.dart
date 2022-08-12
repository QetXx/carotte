// ignore_for_file: deprecated_member_use
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/material.dart';
import 'package:tracknotes/views/auth/authentication.dart';

class LoginInScreen extends StatelessWidget {
  const LoginInScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            flex: 1,
            child: Container(
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/images/mooo.jpeg'),
                  fit: BoxFit.cover,
                  alignment: Alignment.topCenter,
                ),
              ),
            ),
          ),
          // const SizedBox(height: 25),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  alignment: Alignment.center,
                  margin: const EdgeInsets.symmetric(horizontal: 25),
                  child: TextFormField(
                    style: GoogleFonts.poppins(
                        fontSize: 16, fontWeight: FontWeight.bold),
                    decoration: InputDecoration(
                      focusColor: Colors.black,
                      fillColor: Colors.white10,
                      filled: true,
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide.none),
                      focusedBorder: const OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Color(0xff2C3079),
                        ),
                      ),
                      hintText: 'Code Parent',
                      hintStyle: const TextStyle(
                        fontFamily: "poppins",
                        color: Colors.white30,
                      ),
                    ),
                    cursorColor: Colors.white,
                  ),
                ),
                const SizedBox(height: 10),
                Container(
                  alignment: Alignment.center,
                  margin: const EdgeInsets.symmetric(horizontal: 25),
                  child: TextFormField(
                    style: GoogleFonts.poppins(
                        fontSize: 16, fontWeight: FontWeight.bold),
                    decoration: InputDecoration(
                      focusColor: Colors.black,
                      fillColor: Colors.white10,
                      filled: true,
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide.none),
                      focusedBorder: const OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Color(0xff2C3079),
                        ),
                      ),
                      hintText: 'Code Elève',
                      hintStyle: const TextStyle(
                        fontFamily: "poppins",
                        color: Colors.white30,
                      ),
                    ),
                    cursorColor: Colors.white,
                  ),
                ),
                const SizedBox(height: 10),
                Container(
                  alignment: Alignment.centerRight,
                  margin:
                      const EdgeInsets.symmetric(horizontal: 25, vertical: 10),
                  child: RaisedButton(
                    color: Colors.white10,
                    onPressed: () {},
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
                        "Valider",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontFamily: "poppins",
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
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
