import 'package:fip9/learning/Navigation/page_2.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Page1 extends StatefulWidget {
  final String data3;

  const Page1({super.key, this.data3 = ''});

  @override
  State<Page1> createState() => _Page1State();
}

class _Page1State extends State<Page1> {
  String data = "from page 1";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
              onPressed: () {
                // Navigator.of(context).pushNamed("/Page2");
                Get.toNamed("/Page2");
              },
              icon: const Icon(
                Icons.arrow_forward_ios,
                size: 25,
                color: Colors.white,
              ))
        ],
        centerTitle: true,
        backgroundColor: Colors.blue,
        title: const Text(
          "Page 1",
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Center(
        child: Column(
          children: [
            Text(
              widget.data3,
              style: const TextStyle(fontSize: 30),
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(backgroundColor: Colors.blue),
              child: const Text(
                "Next",
                style: TextStyle(color: Colors.white),
              ),
              onPressed: () {
                // Navigator.of(context).push(MaterialPageRoute(
                //   builder: (context) => Page2(data: data),
                // ));
                Get.to(Page2(data: data),curve: Curves.easeInOutCubicEmphasized,duration: const Duration(seconds: 1));
              },
            ),
          ],
        ),
      ),
    );
  }
}
