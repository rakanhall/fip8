import 'package:fip9/learning/Navigation/page_1.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class Page3 extends StatefulWidget {
  final String data2;

  const Page3({super.key, this.data2 = ''});

  @override
  State<Page3> createState() => _Page3State();
}

class _Page3State extends State<Page3> {
  String data3 = "from page 3";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        leading: Navigator.canPop(context)
            ? IconButton(
                onPressed: () {
                  // Navigator.of(context).maybePop();
                  Get.back();
                },
                icon: const Icon(
                  CupertinoIcons.back,
                  color: Colors.white,
                  size: 30,
                ))
            : null,
        backgroundColor: Colors.blue,
        title: const Text(
          "Page 3",
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Center(
        child: Column(
          children: [
            Text(
              widget.data2,
              style: const TextStyle(fontSize: 30),
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(backgroundColor: Colors.blue),
              child: const Text(
                "Next",
                style: TextStyle(color: Colors.white),
              ),
              onPressed: () {
                // Navigator.of(context).pushReplacement(MaterialPageRoute(
                //   builder: (context) => Page1(data3: data3,),
                // ));
                Get.off(Page1(
                  data3: data3,
                ));
              },
            ),
          ],
        ),
      ),
    );
  }
}
