import 'package:fip9/learning/Navigation/page_3.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class Page2 extends StatefulWidget {
  final String data;

  const Page2({super.key, this.data = ''});

  @override
  State<Page2> createState() => _Page2State();
}

class _Page2State extends State<Page2> {
  String data2 = "from page 2";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
              onPressed: () {
                // Navigator.of(context).push(MaterialPageRoute(
                //   builder: (context) => Page3(data2: data2,),
                // ));
                Get.to(Page3(
                  data2: data2,
                ));
              },
              icon: const Icon(
                Icons.arrow_forward_ios,
                size: 30,
                color: Colors.white,
              ))
        ],
        centerTitle: true,
        leading: IconButton(
          icon: const Icon(
            CupertinoIcons.back,
            color: Colors.white,
            size: 30,
          ),
          onPressed: () {
            // if (Navigator.of(context).canPop()) {
            //   Navigator.of(context).pop();
            // }
            Get.back();
          },
        ),
        backgroundColor: Colors.blue,
        title: const Text(
          "Page 2",
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Center(
        child: Column(
          children: [
            Text(
              widget.data,
              style: const TextStyle(fontSize: 30),
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(backgroundColor: Colors.blue),
              child: const Text(
                "Next",
                style: TextStyle(color: Colors.white),
              ),
              onPressed: () {
                // Navigator.of(context).pushNamedAndRemoveUntil(
                //   "/Page3",
                //   (route) => false,
                // );
                Get.offAllNamed("/Page3");
              },
            ),
          ],
        ),
      ),
    );
  }
}
