import 'package:flutter/material.dart';

class ShowGeneralDialogPage extends StatelessWidget {
  const ShowGeneralDialogPage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const FlutterLogo(
              size: 200,
            ),
            const Text(
              "This is a Full Screen Dialog",
              style: TextStyle(fontSize: 20, decoration: TextDecoration.none),
            ),
            ElevatedButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                child: const Text("Close"))
          ],
        ),
      ),
    );
  }
}
