// ignore_for_file: avoid_unnecessary_containers, prefer_const_constructors

import "package:flutter/material.dart";
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

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
      resizeToAvoidBottomInset: false,
      bottomSheet: Container(
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
                dotColor: Colors.grey.shade300,
                activeDotColor: Theme.of(context).colorScheme.primary,
                dotWidth: 5,
                dotHeight: 10,
                spacing: 3,
              ),
            ),
            FloatingActionButton(
              onPressed: () {
                controller.nextPage(
                  duration: Duration(milliseconds: 600),
                  curve: Curves.easeIn,
                );
              },
              child: Icon(Icons.arrow_forward_rounded),
            )
          ],
        ),
      ),
      body: PageView(
        physics: BouncingScrollPhysics(),
        children: [
          OnBoardingPage(
            asset: "assets/lotties/parent.json",
            title: "onboardTitle1".tr,
            description: "onboardDescription1".tr,
          ),
          OnBoardingPage(
            asset: "assets/lotties/parent.json",
            title: "onboardTitle2".tr,
            description: "onboardDescription2".tr,
          ),
          OnBoardingPage(
            asset: "assets/lotties/parent.json",
            title: "onboardTitle3".tr,
            description: "onboardDescription3".tr,
          ),
        ],
        controller: controller,
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
            style: Theme.of(context).textTheme.bodyText1,
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            description!,
            textAlign: TextAlign.center,
            style: Theme.of(context).textTheme.bodyText2!.copyWith(
                  color: Colors.grey,
                ),
          ),
        ],
      ),
    );
  }
}
