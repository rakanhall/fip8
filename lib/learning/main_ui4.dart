import 'package:flutter/material.dart';

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
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(
            children: [
              SizedBox(
                height: 200,
                child: PageView(
                  reverse: true,
                  scrollDirection: Axis.horizontal,
                  children: [
                    Stack(children: [
                      Image.asset(
                        "assets/1TestNature.jpeg",
                        width: MediaQuery.of(context).size.width,
                      ),
                      const Positioned(
                        top: 0,
                        bottom: 0,
                        left: 0,
                        right: 0,
                        child: Icon(
                          Icons.icecream,
                          color: Colors.red,
                        ),
                      ),
                      Align(
                        alignment: Alignment.center,
                        child: SizedBox(
                          width: 10,
                          height: 10,
                          child: Image.asset(
                            "assets/TestImageCharacter.png",
                          ),
                        ),
                      )
                    ]),
                    Image.asset(
                      "assets/1TestNature.jpeg",
                      width: MediaQuery.of(context).size.width,
                    ),
                    Image.asset(
                      "assets/1TestNature.jpeg",
                      width: MediaQuery.of(context).size.width,
                    )
                  ],
                ),
              ),
              const SizedBox(
                  width: 289,
                  child: Wrap(
                    spacing: 13,
                    runSpacing: 13,
                    children: [
                      Icon(Icons.plus_one),
                      Icon(Icons.plus_one),
                      Icon(Icons.plus_one),
                      Icon(Icons.plus_one),
                      Icon(Icons.plus_one),
                      Icon(Icons.plus_one),
                      Icon(Icons.plus_one),
                      Icon(Icons.plus_one),
                      Icon(Icons.plus_one),
                      Icon(Icons.plus_one),
                      Icon(Icons.plus_one),
                      Icon(Icons.plus_one),
                      Icon(Icons.plus_one),
                      Icon(Icons.plus_one),
                      Icon(Icons.plus_one),
                      Icon(Icons.plus_one),
                      Icon(Icons.plus_one),
                      Icon(Icons.plus_one),
                      Icon(Icons.plus_one),
                      Icon(Icons.plus_one),
                      Icon(Icons.plus_one),
                      Icon(Icons.plus_one),
                      Icon(Icons.plus_one),
                      Icon(Icons.plus_one)
                    ],
                  )),
              SizedBox(
                height: 200,
                child: PageView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    Image.asset(
                      "assets/3TestNature.jpeg",
                      width: MediaQuery.of(context).size.width,
                    ),
                    Image.asset(
                      "assets/3TestNature.jpeg",
                      width: MediaQuery.of(context).size.width,
                    ),
                    Image.asset(
                      "assets/3TestNature.jpeg",
                      width: MediaQuery.of(context).size.width,
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 200,
                child: PageView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    Image.asset(
                      "assets/3TestNature.jpeg",
                      width: MediaQuery.of(context).size.width,
                    ),
                    Image.asset(
                      "assets/3TestNature.jpeg",
                      width: MediaQuery.of(context).size.width,
                    ),
                    Image.asset(
                      "assets/3TestNature.jpeg",
                      width: MediaQuery.of(context).size.width,
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 200,
                child: PageView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    Image.asset(
                      "assets/3TestNature.jpeg",
                      width: MediaQuery.of(context).size.width,
                    ),
                    Image.asset(
                      "assets/3TestNature.jpeg",
                      width: MediaQuery.of(context).size.width,
                    ),
                    Image.asset(
                      "assets/3TestNature.jpeg",
                      width: MediaQuery.of(context).size.width,
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 200,
                child: PageView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    Image.asset(
                      "assets/3TestNature.jpeg",
                      width: MediaQuery.of(context).size.width,
                    ),
                    Image.asset(
                      "assets/3TestNature.jpeg",
                      width: MediaQuery.of(context).size.width,
                    ),
                    Image.asset(
                      "assets/3TestNature.jpeg",
                      width: MediaQuery.of(context).size.width,
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 200,
                child: PageView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    Image.asset(
                      "assets/3TestNature.jpeg",
                      width: MediaQuery.of(context).size.width,
                    ),
                    Image.asset(
                      "assets/3TestNature.jpeg",
                      width: MediaQuery.of(context).size.width,
                    ),
                    Image.asset(
                      "assets/3TestNature.jpeg",
                      width: MediaQuery.of(context).size.width,
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
