import 'package:demo/widgets/custom_button.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Welcome to Flutter",
            style: TextStyle(color: Colors.white, fontSize: 30)),
      ),
      body: Container(
        padding: const EdgeInsets.all(8),
        width: 395,
        height: 750,
        // color: const Color.fromARGB(255, 247, 145, 12), // OR
        decoration: const BoxDecoration(
            shape: BoxShape.circle, // OR
            // borderRadius: BorderRadius.circular(10),
            boxShadow: [
              BoxShadow(
                  color: Colors.grey,
                  blurRadius: 10 /*, spreadRadius: 5*/,
                  offset: Offset(5.0, 5.0))
            ],
            color: Colors.teal,
            gradient:
                LinearGradient(colors: [Colors.yellow, Colors.redAccent])),
        child: Center(
          child: Column(
            children: [
              const Text(
                'Hello world!!!',
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 25,
                    color: Colors.black,
                    fontWeight: FontWeight.bold),
              ),
              CustomButton(
                title: "Hii",
                onPressed: () {
                  Navigator.pushNamed(context, "/second_screen");
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
