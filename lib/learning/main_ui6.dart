import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

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
        appBar: AppBar(
          backgroundColor: Colors.blueAccent,
        ),
        body: Column(
          children: [
            buildExpandedWhite(),
            buildExpandedBlack(),
            buildExpandedWhite(),
            buildExpandedBlack(),
            buildExpandedWhite(),
            buildExpandedBlack()
          ],
        ),
      ),
    );
  }

  Expanded buildExpandedWhite() {
    return Expanded(
        flex: 1,
        child: Container(
          color: Colors.white,
          child: Row(
            children: [
              Container(
                decoration: BoxDecoration(
                    color: Colors.green,
                    borderRadius: BorderRadius.circular(100)),
                height: 27,
                width: 27,
                margin: const EdgeInsets.all(5),
                child: const Icon(
                  color: Colors.white,
                  CupertinoIcons.plus,
                  size: 25,
                ),
              ),
              const Expanded(
                  flex: 10, child: Text("How long is a long SMS message?")),
              Expanded(
                  child: Container(
                alignment: Alignment.center,
                color: Colors.redAccent,
                child: const Icon(CupertinoIcons.delete),
              ))
            ],
          ),
        ));
  }

  Expanded buildExpandedBlack() {
    return Expanded(
        flex: 1,
        child: Container(
          color: Colors.black12,
          child: Row(
            children: [
              Container(
                decoration: BoxDecoration(
                    color: Colors.green,
                    borderRadius: BorderRadius.circular(100)),
                height: 27,
                width: 27,
                margin: const EdgeInsets.all(5),
                child: const Icon(
                  color: Colors.white,
                  CupertinoIcons.plus,
                  size: 25,
                ),
              ),
              const Expanded(
                  flex: 10, child: Text("How long is a long SMS message?")),
              Expanded(
                  child: Container(
                alignment: Alignment.center,
                color: Colors.red.shade700,
                child: const Icon(CupertinoIcons.delete),
              ))
            ],
          ),
        ));
  }
}
