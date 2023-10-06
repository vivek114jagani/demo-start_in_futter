import 'package:flutter/material.dart';

class AddWiged extends StatefulWidget {
  const AddWiged({super.key});

  @override
  State<AddWiged> createState() => _AddWigedState();
}

class _AddWigedState extends State<AddWiged> {
  int n = 0;
  int n1 = 0;
  int n2 = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          color: Colors.blue,
          border: Border.all(
            color: Colors.transparent,
            width: 3,
            style: BorderStyle.solid,
          ),
          // boxShadow: const [
          //   BoxShadow(
          //     blurRadius: 5,
          //     color: Colors.greenAccent,
          //     spreadRadius: 5,
          //     offset: Offset(5.0, 5.0),
          //   ),
          // ],
          shape: BoxShape.circle,
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                '$n = $n1 + $n2',
                style: const TextStyle(
                  fontSize: 30,
                  fontFamily: 'DancingScriptM',
                ),
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: CircleAvatar(
        radius: 25,
        child: IconButton(
          onPressed: () {
            n = (n1++ + n2++) + 2;
            setState(() {});
          },
          icon: const Icon(Icons.add),
        ),
      ),
    );
  }
}
