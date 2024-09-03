import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class TextFieldEx extends StatefulWidget {
  const TextFieldEx({super.key});

  @override
  State<TextFieldEx> createState() => _TextFieldExState();
}

class _TextFieldExState extends State<TextFieldEx> {
  TextEditingController controller = TextEditingController();
  FocusNode focusNode = FocusNode();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.orange,
        title: const Text(
          "Example",
          style: TextStyle(
              fontWeight: FontWeight.bold,
              decoration: TextDecoration.underline,
              decorationThickness: 1.5,
              color: Colors.black38,
              decorationColor: Colors.black38),
        ),
        centerTitle: true,
        leading: const Icon(Icons.keyboard_alt_outlined),
        actions: [
          Container(
              margin: const EdgeInsets.symmetric(horizontal: 10),
              child: const Icon(
                CupertinoIcons.plus,
              ))
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 400,width: 500,child: Image.asset("assets/CopyOfCars.jpg",),),SizedBox(height: 30,),
            SizedBox(
              width: 350,
              child: TextField(
                onTapOutside: (event) {
                  FocusScope.of(context).unfocus();
                },
                decoration: InputDecoration(
                    border: const OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(70))),
                    label: const Text(("Username")),
                    enabledBorder: enabledBorder(),
                    focusedBorder: otherBorder(),
                    hintText: "Ex: Rakanrh1",
                    hintStyle: const TextStyle(color: Colors.black12),
                    prefixIcon: const Icon(
                      CupertinoIcons.shield_fill,
                      color: Colors.blueAccent,
                    ),
                    suffixIcon: Icon(
                      CupertinoIcons.arrow_right,
                      color: Colors.black26,
                    )),
              ),
            ),
            Container(
                alignment: Alignment.center,
                height: 100,
                child: ElevatedButton(
                  onPressed: () {
                    print(controller.text);
                  },
                  style: ButtonStyle(
                    backgroundColor: WidgetStateColor.resolveWith((states) {
                      if (states.contains(WidgetState.pressed)) {
                        return Colors.green; // Color when hovered
                      }
                      return Colors.blue; // Default color
                    }),
                  ),
                  child: const Text(
                    "Submit",
                    style: TextStyle(color: Colors.white),
                  ),
                ))
          ],
        ),
      ),
    );
  }

  OutlineInputBorder enabledBorder() {
    return const OutlineInputBorder(
        borderRadius: BorderRadius.all(Radius.circular(70)),
        borderSide: BorderSide(width: 2));
  }

  OutlineInputBorder otherBorder() {
    return const OutlineInputBorder(
        borderRadius: BorderRadius.all(Radius.circular(70)),
        borderSide: BorderSide(width: 3, color: Colors.green));
  }
}
