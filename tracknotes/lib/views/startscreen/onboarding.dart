// ignore_for_file: avoid_unnecessary_containers, prefer_const_constructors

import "package:flutter/material.dart";
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:tracknotes/views/home.dart';

class OnBoarding extends StatefulWidget {
  const OnBoarding({Key? key}) : super(key: key);

  @override
  State<OnBoarding> createState() => _OnBoardingState();
}

class _OnBoardingState extends State<OnBoarding> {
  PageController controller = PageController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff2C3079),
      resizeToAvoidBottomInset: false,
      bottomSheet: Container(
        color: Color(0xff2C3079),
        padding: EdgeInsets.only(left: 15, right: 15, bottom: 15),
        height: 70,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SmoothPageIndicator(
              controller: controller, // PageController
              count: 3,
              effect: ExpandingDotsEffect(
                expansionFactor: 2.2,
                dotColor: Colors.white24,
                activeDotColor: Colors.white,
                dotWidth: 10,
                dotHeight: 10,
                spacing: 8,
              ),
            ),
            FloatingActionButton(
              onPressed: () {
                if (controller.page!.toInt() == 2) {
                  //next page
                  Get.to(
                    HomePage(),
                    transition: Transition.cupertino,
                    duration: Duration(milliseconds: 900),
                    popGesture: true,
                  );
                } else {
                  controller.nextPage(
                    duration: Duration(milliseconds: 600),
                    curve: Curves.easeIn,
                  );
                }
              },
              child: Icon(Icons.arrow_forward_rounded, size: 25.0),
            )
          ],
        ),
      ),
      appBar: AppBar(
        actions: [
          Padding(
            padding: EdgeInsets.only(right: 20),
            child: TextButton(
              onPressed: () {
                Get.to(
                  HomePage(),
                  transition: Transition.cupertino,
                  duration: Duration(milliseconds: 900),
                  popGesture: true,
                );
              },
              child: Text(
                "passer",
                style: Theme.of(context).textTheme.bodyText2,
              ),
            ),
          ),
        ],
      ),
      body: PageView(
        physics: BouncingScrollPhysics(),
        controller: controller,
        children: const [
          OnBoardingPage(
            asset: "assets/lotties/parent.json",
            title: "Parents",
            description: "Suivez les cours de vos enfants ou que vous soyez",
          ),
          OnBoardingPage(
            asset: "assets/lotties/teachers.json",
            title: "Enseignants",
            description:
                "Rendez vous la vie facile avec  Suivi-scolaire pour rendre les notes de vos eleves disponible en moins de temps",
          ),
          OnBoardingPage(
            asset: "assets/lotties/school.json",
            title: "Etablissements",
            description:
                "Avec suivi scolaire les notes de vos eleves sont verifié et les parents sont au parfun des notes des enfants",
          ),
        ],
      ),
    );
  }
}

class OnBoardingPage extends StatelessWidget {
  final String? asset;
  final String? title;
  final String? description;

  const OnBoardingPage({Key? key, this.asset, this.title, this.description})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10),
      child: Column(
        children: [
          asset == "assets/lotties/parent.json"
              ? Transform.translate(
                  offset: Offset(20, 0),
                  child: SizedBox(
                    width: MediaQuery.of(context).size.height / 2.5,
                    child: Lottie.asset(
                      asset!,
                      repeat: false,
                    ),
                  ),
                )
              : SizedBox(
                  width: MediaQuery.of(context).size.height / 2.5,
                  child: Lottie.asset(
                    asset!,
                    repeat: false,
                  ),
                ),
          if (asset == "assets/lotties/parent.json") SizedBox(height: 30),
          Text(
            title!,
            textAlign: TextAlign.center,
            style: Theme.of(context).textTheme.headline1,
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            description!,
            textAlign: TextAlign.center,
            style: Theme.of(context).textTheme.bodyText1!.copyWith(
                  color: Colors.grey,
                ),
          ),
        ],
      ),
    );
  }
}
