import 'package:fip9/tasks/task4.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class ThirdScreen extends StatelessWidget {
  const ThirdScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          backgroundColor: Colors.white,
          body: SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            child: Column(
              children: [
                SizedBox(
                  height: 85,
                  child: Row(
                    children: [
                      const Spacer(flex: 8),
                      Expanded(
                          flex: 2,
                          child: TextButton(
                              onPressed: () {
                                Get.offAll(const LastScreen());
                              },
                              style: TextButton.styleFrom(),
                              child: const Text("Skip",
                                  style: TextStyle(
                                      color: Colors.black38,
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold))))
                    ],
                  ),
                ),
                SizedBox(
                  height: 350,
                  child: Image.asset(
                    "assets/CopyOfCars2.png",
                    scale: 0.9,
                  ),
                ),
                const SizedBox(
                  height: 70,
                ),
                Container(
                  alignment: Alignment.center,
                  height: 90,
                  width: 360,
                  child: const Text(
                    "Get Detailed and Accurate Vehicle Information",
                    style: TextStyle(fontSize: 27, fontWeight: FontWeight.bold),
                  ),
                ),
                Container(
                  alignment: Alignment.center,
                  width: 360,
                  height: 70,
                  child: const Text(
                    "Retrieve comprehensive details about any vehicle, including make, model, year, and specifications.",
                    style: TextStyle(fontSize: 15, color: Colors.black38),
                  ),
                ),
                Container(
                  alignment: Alignment.centerLeft,
                  padding: const EdgeInsets.only(left: 27),
                  height: 40,
                  child: const AnimatedSmoothIndicator(
                    activeIndex: 2,
                    count: 3,
                    effect: ExpandingDotsEffect(
                        activeDotColor: Color(0xFF1b3f6f),
                        dotColor: Color(0xffa7c9d5),
                        dotWidth: 19,
                        dotHeight: 7,
                        expansionFactor: 1.5),
                  ),
                ),
                Container(
                  alignment: Alignment.center,
                  height: 150,
                  child: Row(
                    children: [
                      const SizedBox(
                        width: 25,
                      ),
                      SizedBox(
                        width: 170,
                        height: 45,
                        child: ElevatedButton(
                          onPressed: () {
                            Get.back();
                          },
                          style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.white,elevation: 0,side: const BorderSide(color: Color(0xFF1b3f6f),width: 1.5)),
                          child: const Text(
                            "Back",
                            style: TextStyle(color: Color(0xFF1b3f6f), fontSize: 17),
                          ),
                        ),
                      ),const SizedBox(
                        width: 20,
                      ),
                      SizedBox(
                        width: 170,
                        height: 45,
                        child: ElevatedButton(
                          onPressed: () {
                            Get.offAll(const LastScreen());
                          },
                          style: ElevatedButton.styleFrom(
                              backgroundColor: const Color(0xFF1b3f6f)),
                          child: const Text(
                            "Get Started",
                            style: TextStyle(color: Colors.white, fontSize: 17),
                          ),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ));
  }
}
