import 'package:demo/screen/show_dialog.dart';
import 'package:demo/widgets/custom_button.dart';
import 'package:flutter/material.dart';

class CustomWidgetDemoPage extends StatelessWidget {
  const CustomWidgetDemoPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text("Hello World!"),
            CustomButton(
              title: "Hello",
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const ShowGeneralDialogPage(),
                  ),
                );
              },
            ),
            const CustomButton(title: "Good Morning"),
            const CustomButton(title: "Good Morning"),
            const CustomButton(title: "Good Morning"),
            const CustomButton(title: "Good Morning"),
            const CustomButton(title: "Good Morning"),
            const CustomButton(title: "Good Morning"),
          ],
        ),
      ),
    );
  }
}
