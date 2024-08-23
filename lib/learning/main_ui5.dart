import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ResponsiveSizer(
      builder: (context, orientation, screenType) {
        return const MaterialApp(
          home: HomeScreen(),
          debugShowCheckedModeBanner: false,
        );
      },
    );
  }
}

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    final List<Color> colors = [
      Colors.red,
      Colors.purple,
      Colors.blue,
      Colors.green,
      Colors.orange
    ];

    final List<Color> backColors = [
      Colors.red.shade300,
      Colors.purple.shade300,
      Colors.blue.shade300,
      Colors.green.shade300,
      Colors.orange.shade300
    ];

    return Scaffold(
      backgroundColor: backColors[_currentIndex],
      body: Center(
        child: CarouselSlider(
          options: CarouselOptions(
            height: 400.0,
            autoPlay: true,
            initialPage: 3,
            viewportFraction: 0.7,
            aspectRatio: 16 / 9,
            autoPlayCurve: Curves.easeInOut,
            onPageChanged: (index, reason) {
              setState(() {
                _currentIndex = index;
              });
            },
          ),
          items: [1, 2, 3, 4, 5].map((i) {
            return Builder(
              builder: (BuildContext context) {
                return Container(
                    alignment: Alignment.topCenter,
                    width:
                    Device.screenType == ScreenType.tablet ? 100.w : 100.w,
                    margin: const EdgeInsets.symmetric(horizontal: 15),
                    decoration: BoxDecoration(
                        color: colors[(i - 1) % colors.length],
                        borderRadius:
                        const BorderRadius.all(Radius.circular(30))),
                    child: Stack(children: [
                      Positioned(
                          top: 0,
                          bottom: 0,
                          left: 0,
                          right: 0,
                          child: Image.asset("assets/TestImageCharacter.png"))
                    ]));
              },
            );
          }).toList(),
        ),
      ),
    );
  }
}
