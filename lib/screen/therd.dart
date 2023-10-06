import 'package:flutter/material.dart';

class MyWidget extends StatefulWidget {
  const MyWidget({super.key});

  @override
  State<MyWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
  int n = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("$n", style: const TextStyle(fontSize: 30)),
            Text("$n", style: const TextStyle(fontSize: 30)),
            CustomTextWidget(
              n: n,
            )
          ],
        ),
      ),
      floatingActionButton: CircleAvatar(
          radius: 25,
          child: IconButton(
              onPressed: () {
                n++;
                setState(() {});
              },
              icon: const Icon(Icons.add))),
    );
  }
}

class CustomTextWidget extends StatelessWidget {
  const CustomTextWidget({
    super.key,
    required this.n,
  });

  final int n;

  @override
  Widget build(BuildContext context) {
    return Text("$n", style: const TextStyle(fontSize: 30));
  }
}
