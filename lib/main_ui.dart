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
    return SafeArea(
      child: Scaffold(
          backgroundColor: Colors.amber,
          appBar: AppBar(
              backgroundColor: const Color.fromRGBO(111, 195, 101, 1),
              centerTitle: true,
              elevation: 3,
              shadowColor: Colors.black,
              title: const Text(
                'FIP9 APP first app',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 25,
                    fontStyle: FontStyle.italic,
                    fontWeight: FontWeight.bold,
                    decoration: TextDecoration.lineThrough,
                    decorationThickness: 2.5,
                    decorationColor: Colors.white,
                    decorationStyle: TextDecorationStyle.wavy,
                    letterSpacing: 2,
                    wordSpacing: 3,
                    overflow: TextOverflow.fade),
              ),
              actions: const [
                Icon(Icons.add, size: 30),
                Icon(Icons.settings, size: 30),
                Icon(Icons.account_box, size: 30),
              ],
              leading: const Icon(
                Icons.search,
                size: 40,
                shadows: [
                  Shadow(color: Colors.cyan, blurRadius: 20),
                  Shadow(color: Colors.white, blurRadius: 20),
                  Shadow(color: Colors.red, blurRadius: 20)
                ],
              ),
              shape: RoundedRectangleBorder(
                  borderRadius:
                      const BorderRadius.vertical(bottom: Radius.circular(15)),
                  side:
                      BorderSide(color: Colors.lightGreen.shade700, width: 3)),
              toolbarHeight: kToolbarHeight,
              foregroundColor: Colors.white60,
              bottom: const PreferredSize(
                  preferredSize: Size.fromHeight(100), child: Text(''))),
          body: Center(
            child: Container(
              width: 200,
              height: 350,
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.black, width: 3),
                  color: Colors.deepOrange),
              child: Align(
                alignment: Alignment(0, -0.6),
                child: Container(
                  height: MediaQuery.of(context).size.height * 0.1,
                  decoration: BoxDecoration(
                      color: Colors.blueAccent,
                      boxShadow: const [
                        BoxShadow(color: Colors.black, blurRadius: 3),
                        BoxShadow(color: Colors.green, blurRadius: 10)
                      ],
                      borderRadius: const BorderRadius.horizontal(
                          left: Radius.circular(100),
                          right: Radius.circular(100)),
                      gradient: const LinearGradient(
                          colors: [Colors.redAccent, Colors.blueAccent],
                          begin: Alignment.centerLeft,
                          end: Alignment.centerRight),
                      border: Border.all(color: Colors.black, width: 3)),
                ),
              ),
            ),
          )),
    );
  }
}
