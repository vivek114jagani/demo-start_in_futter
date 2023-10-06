import 'package:demo/widgets/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SecoondScreen extends StatelessWidget {
  const SecoondScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text("Hello"),
        centerTitle: true,
        // automaticallyImplyLeading: false,
        // leading: const Icon(
        //   Icons.abc,
        //   size: 30,
        // ),
        actions: const [
          Center(child: Text("data")),
          Icon(
            Icons.person,
            size: 30,
          ),
        ],
      ),
      drawer: const Drawer(
        child: Column(
          children: [
            DrawerHeader(
              child: Text("data"),
            ),
            Text("data"),
            Text("data"),
            Text("data"),
            Text("data"),
            Text("data"),
          ],
        ),
      ),
      body: Center(
        child: Column(
          children: [
            Text(
              'This is Google Fonts',
              style: GoogleFonts.robotoMono(color: Colors.yellow, fontSize: 50),
            ),
            const Text(
              "data",
              style: TextStyle(
                  fontFamily: 'DancingScript',
                  fontSize: 30,
                  color: Colors.white),
            ),
            const Text(
              "Hello world!",
              style: TextStyle(
                  fontFamily: 'DancingScriptM',
                  fontSize: 30,
                  color: Colors.white),
            ),
            const Text(
              "Hello World",
              style: TextStyle(
                color: Colors.blue,
                fontWeight: FontWeight.w900,
                fontSize: 30,
                fontStyle: FontStyle.italic,
              ),
            ),
            Image.asset(
              "assets/image.jpg",
            ),
            const CircleAvatar(
              backgroundColor: Colors.amber,
              radius: 50,
              backgroundImage: AssetImage("assets/image.jpg"),
              child: Icon(
                Icons.home,
                size: 52,
              ),
            ),
            CustomButton(
              title: "Custom",
              onPressed: () {
                Navigator.pushNamed(context, '/custom_page');
              },
            ),
          ],
        ),
      ),
    );
  }
}
