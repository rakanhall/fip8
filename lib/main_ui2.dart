import 'package:flutter/material.dart';

void main() {
  //runs the project
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
        debugShowCheckedModeBanner: false, home: HomeScreen());
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color(0xff112C33),
        appBar: AppBar(
          backgroundColor: Colors.white.withOpacity(0.051),
          bottom: const PreferredSize(
            preferredSize: Size.fromHeight(40),
            child: Text(''),
          ),
          shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.vertical(bottom: Radius.circular(20))),
          centerTitle: true,
          title: const Text(
            "MY APP",
            style: TextStyle(
                fontSize: 40,
                fontWeight: FontWeight.bold,
                color: Colors.white38,
                fontStyle: FontStyle.italic,
                shadows: [
                  Shadow(color: Colors.red, blurRadius: 10),
                ]),
          ),
          actions: const [
            Icon(Icons.settings, size: 30, color: Colors.white38),
            Icon(Icons.search, size: 30, color: Colors.white38)
          ],
          leading: const Icon(
            Icons.account_box,
            color: Colors.white38,
            size: 30,
          ),
        ),
        body: Center(
          child: Container(
            color: Colors.white70,
            child: Align(
              alignment: Alignment.center,
              child: Container(
                width: 30,
                height: 90,
                decoration: const BoxDecoration(
                    color: Colors.red,
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                    gradient: LinearGradient(
                        colors: [Colors.red, Colors.white70],
                        begin: Alignment.bottomCenter,
                        end: Alignment.topCenter)),
                child: Align(
                  alignment: Alignment.center,
                  child: Container(
                    height: 20,
                    width: 20,
                    decoration: const BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.all(Radius.circular(20))),
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
