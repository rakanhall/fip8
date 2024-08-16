import 'dart:convert';

import 'package:flutter/material.dart';

void main() {
  runApp(const OurApp());
}

class OurApp extends StatelessWidget {
  const OurApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
        home: HomeScreen(), debugShowCheckedModeBanner: false);
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  final String base64Image =
      "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";

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: Colors.white,
            appBar: AppBar(
              title: Image.asset(
                "assets/TestImageCharacter.png",
                width: 50,
              ),
              backgroundColor: Colors.white,
              centerTitle: true,
            ),
            body: Center(
              child: SingleChildScrollView(
                physics: const BouncingScrollPhysics(),
                child: Column(
                  children: [
                    const Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        "Tree",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                    ),
                    Image.asset(
                      "assets/1TestNature.jpeg",
                      width: MediaQuery.of(context).size.width,
                      fit: BoxFit.cover,
                    ),
                    const Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        "Buple",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Image.memory(
                      base64Decode(base64Image),
                      width: MediaQuery.of(context).size.width,
                      fit: BoxFit.cover,
                    ),
                    const Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        "Water Fall",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Image.network(
                      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR2PlVyr1R4_ILdj-vZfaJyqhuDi2LMERtssg&s",
                      width: MediaQuery.of(context).size.width,
                      fit: BoxFit.cover,
                    ),
                    const Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        "Tree",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Image.asset(
                      "assets/1TestNature.jpeg",
                      width: MediaQuery.of(context).size.width,
                      fit: BoxFit.cover,
                    ),
                    const Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        "Tree",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Image.asset("assets/1TestNature.jpeg",
                        width: MediaQuery.of(context).size.width,
                        fit: BoxFit.cover),
                    const Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        "Among Us",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    SingleChildScrollView(
                      physics: const BouncingScrollPhysics(),
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          Image.asset("assets/TestImageCharacter.png",
                              width: MediaQuery.of(context).size.width / 2,
                              fit: BoxFit.cover),
                          const SizedBox(
                            height: 10,
                          ),
                          const Padding(
                              padding: EdgeInsets.symmetric(horizontal: 50,)),
                          Image.asset("assets/TestImageCharacter.png",
                              width: MediaQuery.of(context).size.width / 2,
                              fit: BoxFit.cover),
                          const Padding(
                              padding: EdgeInsets.symmetric(horizontal: 50)),
                          Image.asset("assets/TestImageCharacter.png",
                              width: MediaQuery.of(context).size.width / 2,
                              fit: BoxFit.cover),
                          const SizedBox(
                            height: 10,
                          ),
                          const Padding(
                              padding: EdgeInsets.symmetric(horizontal: 50)),
                          Image.asset("assets/TestImageCharacter.png",
                              width: MediaQuery.of(context).size.width / 2,
                              fit: BoxFit.cover)
                        ],
                      ),
                    ),Container(
                      color: Colors.blue, // Container's color (like the frame)
                      padding: EdgeInsets.all(80), // Space inside the container, pushing the content inward
                        // Space outside the container, pushing it away from other widgets
                      child: Text("Hello!"), // The content inside the container
                    )

                  ],
                ),
              ),
            )));
  }
}
