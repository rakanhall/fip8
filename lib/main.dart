import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'learning/Inputs/text_field_ex.dart';

void main() {
  runApp(const MyApp());
}

final List<String> categories = [
  "Rakan",
  "Khaled",
  "Saeed",
  "Mohamed",
  "Saleem",
  "Abed"
];

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: TextFieldEx(),
      // routes: {
      //   "/Page1": (context) => Page1(),
      //   "/Page2": (context) => Page2(),
      //   "/Page3": (context) => Page3(),
      // },
    );
  }
}

// class HomeScreen extends StatelessWidget {
//   const HomeScreen({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Center(
//         child: Container(
//           width: 350,
//           height: 750,
//           decoration:
//               BoxDecoration(border: Border.all(color: Colors.black, width: 5)),
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//               Row(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 children: [
//                   Container(
//                     color: CupertinoColors.activeGreen,
//                     alignment: Alignment.center,
//                     height: 145,
//                     width: 145,
//                     margin: const EdgeInsets.all(8),
//                     child: const Text("hey"),
//                   ),
//                   Container(
//                     color: CupertinoColors.destructiveRed,
//                     alignment: Alignment.center,
//                     height: 145,
//                     width: 145,
//                     margin: const EdgeInsets.all(8),
//                     child: const Text("hey"),
//                   )
//                 ],
//               ),
//               Row(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 children: [
//                   Container(
//                     color: CupertinoColors.destructiveRed,
//                     alignment: Alignment.center,
//                     height: 145,
//                     width: 145,
//                     margin: const EdgeInsets.all(8),
//                     child: const Text("hey"),
//                   ),
//                   Container(
//                     color: CupertinoColors.activeGreen,
//                     alignment: Alignment.center,
//                     height: 145,
//                     width: 145,
//                     margin: const EdgeInsets.all(8),
//                     child: const Text("hey"),
//                   )
//                 ],
//               ),
//               const HomeButton()
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
//
// Container categoriesBuilder(String title) {
//   return Container(
//     decoration: BoxDecoration(
//       color: Colors.red,
//       borderRadius: BorderRadius.circular(30),
//     ),
//     child: Padding(
//       padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 5),
//       child: Text(title,
//           style: const TextStyle(color: Colors.white, fontSize: 13)),
//     ),
//   );
// }
//
// class HomeButton extends StatefulWidget {
//   const HomeButton({super.key});
//
//   @override
//   State<HomeButton> createState() => _HomeButtonState();
// }
//
// class _HomeButtonState extends State<HomeButton> {
//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       children: [
//         Wrap(
//           spacing: 10,
//           runSpacing: 6,
//           children: [...categories.map((e) => categoriesBuilder(e))],
//         ),
//         ElevatedButton(
//           onPressed: () {
//             categories.add("Name");
//             setState(() {});
//           },
//           style: ElevatedButton.styleFrom(
//               backgroundColor: Colors.blue,
//               elevation: 5,
//               enableFeedback: true),
//           child: const Text(
//             "Add Name",
//             style: TextStyle(color: Colors.white),
//           ),
//         ),TextButton(
//             onPressed: () {
//               categories.removeLast();
//               setState(() {});
//             },
//             child: const Text(
//               "Remove Name",
//               style: TextStyle(color: Colors.red, fontSize: 12),
//             )),
//       ],
//     );
//   }
// }
