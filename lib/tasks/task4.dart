import 'package:flutter/material.dart';

class LastScreen extends StatefulWidget {
  const LastScreen({super.key});

  @override
  State<LastScreen> createState() => _LastScreenState();
}

class _LastScreenState extends State<LastScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          alignment: Alignment.center,
          decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/BackImage.png"), fit: BoxFit.cover),
          ),
          child: SingleChildScrollView(
            child: Column(
              children: [
                const SizedBox(
                  height: 200,
                ),
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Container(
                      alignment: Alignment.center,
                      height: 60,
                      width: 150,
                      child: const Text(
                        "Login",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 40,
                            fontWeight: FontWeight.bold),
                      )),
                ),
                Container(
                  width: MediaQuery.of(context).size.width * 0.9,
                  height: 500,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(15),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.2),
                        // Shadow color with opacity
                        spreadRadius: 5,
                        // How much the shadow spreads
                        blurRadius: 10,
                        // How much the shadow is blurred
                        offset: const Offset(
                            0, 5), // The position of the shadow (x, y)
                      ),
                    ],
                  ),
                  child: Column(
                    children: [
                      const SizedBox(
                        height: 30,
                      ),
                      Container(
                        alignment: Alignment.center,
                        decoration: const BoxDecoration(
                            color: Color(0xFF1b3f6f),
                            borderRadius:
                                BorderRadius.all(Radius.circular(30))),
                        padding: const EdgeInsets.all(5),
                        width: 180,
                        child: const Text(
                          "Sign In",
                          style: TextStyle(
                              fontSize: 27,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                      ),
                      const SizedBox(
                        height: 50,
                      ),
                      emailField(),
                      const SizedBox(
                        height: 20,
                      ),
                      passwordField(),
                      Container(
                        padding: EdgeInsets.only(left: 30),
                        child: Row(
                          children: [
                            SizedBox(
                              width: 30,
                              child: Checkbox(
                                value: true,
                                onChanged: (value) {},
                              ),
                            ),
                            const Text(
                              "Remember Me",
                              style: TextStyle(
                                  color: Colors.black38,
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold),
                            )
                          ],
                        ),
                      ),
                      Container(
                        alignment: Alignment.center,
                        height: 110,
                        child: SizedBox(
                          width: 200,height: 45,
                          child: ElevatedButton(
                            onPressed: () {
                            },
                            style: ElevatedButton.styleFrom(
                                backgroundColor: const Color(0xFF1b3f6f)),
                            child: const Text(
                              "Next",
                              style: TextStyle(color: Colors.white,fontSize: 15),
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Column emailField() {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: [
              Container(
                padding: EdgeInsets.only(left: 30),
                child: const Icon(
                  Icons.email_outlined,
                  color: Colors.black38,
                ),
              ),
              Container(
                alignment: Alignment.centerLeft,
                padding: const EdgeInsets.only(left: 3),
                child: const Text(
                  "Email",
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Colors.black38),
                ),
              ),
            ],
          ),
        ),
        SizedBox(
          width: 320,
          child: TextField(
            decoration: InputDecoration(
                enabledBorder: enabledBorder(),
                focusedBorder: otherBorder(),
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30))),
          ),
        ),
      ],
    );
  }

  Column passwordField() {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: [
              Container(
                padding: EdgeInsets.only(left: 30),
                child: const Icon(
                  Icons.lock_outlined,
                  color: Colors.black38,
                ),
              ),
              Container(
                alignment: Alignment.centerLeft,
                padding: const EdgeInsets.only(left: 3),
                child: const Text(
                  "Password",
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Colors.black38),
                ),
              ),
            ],
          ),
        ),
        SizedBox(
          width: 320,
          child: TextField(
            decoration: InputDecoration(
                enabledBorder: enabledBorder(),
                focusedBorder: otherBorder(),
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30))),
          ),
        ),
      ],
    );
  }

  OutlineInputBorder enabledBorder() {
    return const OutlineInputBorder(
        borderRadius: BorderRadius.all(Radius.circular(70)),
        borderSide: BorderSide(width: 2, color: Colors.black38));
  }

  OutlineInputBorder otherBorder() {
    return const OutlineInputBorder(
        borderRadius: BorderRadius.all(Radius.circular(70)),
        borderSide: BorderSide(width: 3, color: Colors.lightGreen));
  }
}
