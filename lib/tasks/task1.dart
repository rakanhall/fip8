import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(physics: const BouncingScrollPhysics(),
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
              height: 470,
              child: Image.asset(
                "assets/CopyOfCars.jpg",
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
                "Easily Scan Any Vehicle Tybe for Details",
                style: TextStyle(fontSize: 27, fontWeight: FontWeight.bold),
              ),
            ),
            Container(
              alignment: Alignment.center,
              width: 360,
              height: 70,
              child: const Text(
                "Supports sedans,hatcbacks,trucks,and more.Get information on any vehicle type easily.",
                style: TextStyle(fontSize: 15, color: Colors.black38),
              ),
            ),
            Container(
              alignment: Alignment.centerLeft,
              padding: const EdgeInsets.only(left: 27),
              height: 40,
              child: const AnimatedSmoothIndicator(
                activeIndex: 3,
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
              child: SizedBox(
                width: MediaQuery.of(context).size.width * 0.9,height: 45,
                child: ElevatedButton(
                  onPressed: () {
                  },
                  style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xFF1b3f6f)),
                  child: const Text(
                    "Next",
                    style: TextStyle(color: Colors.white,fontSize: 15),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    ));
  }
}
