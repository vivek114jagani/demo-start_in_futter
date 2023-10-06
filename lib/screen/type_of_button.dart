import 'package:flutter/material.dart';

class TypesOfButton extends StatelessWidget {
  const TypesOfButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextButton(
              style: ButtonStyle(
                foregroundColor: MaterialStateProperty.all<Color>(Colors.blue),
              ),
              onPressed: () {},
              child: const Text('TextButton'),
            ),
            TextButton(
                style: ButtonStyle(
                  foregroundColor:
                      MaterialStateProperty.all<Color>(Colors.blue),
                  overlayColor: MaterialStateProperty.resolveWith<Color?>(
                    (Set<MaterialState> states) {
                      if (states.contains(MaterialState.hovered)) {
                        return Colors.blue.withOpacity(0.04);
                      }
                      if (states.contains(MaterialState.focused) ||
                          states.contains(MaterialState.pressed)) {
                        return Colors.blue.withOpacity(0.12);
                      }
                      return null; // Defer to the widget's default.
                    },
                  ),
                ),
                onPressed: () {},
                child: const Text('TextButton')),
            TextButton(
              style: ButtonStyle(
                overlayColor: MaterialStateProperty.resolveWith<Color?>(
                    (Set<MaterialState> states) {
                  if (states.contains(MaterialState.focused)) {
                    return Colors.red;
                  }
                  return null; // Defer to the widget's default.
                }),
              ),
              onPressed: () {},
              child: const Text('TextButton'),
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                  textStyle: const TextStyle(fontSize: 20)),
              onPressed: null,
              child: const Text('Disabled'),
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.amber,
                elevation: 10,
                foregroundColor: Colors.blue,
                disabledBackgroundColor: Colors.black,
                textStyle: const TextStyle(fontSize: 20),
              ),
              onPressed: () {},
              child: const Text('Enabled'),
            ),
            OutlinedButton(
              style: OutlinedButton.styleFrom(
                shape: const StadiumBorder(),
                side: const BorderSide(width: 2, color: Colors.red),
              ),
              onPressed: () {},
              child: const Text('OutlinedButton with custom shape and border'),
            ),
            MaterialButton(
              onPressed: () {},
              elevation: 10,
              padding: const EdgeInsets.all(20),
              textColor: Colors.white,
              color: Colors.red,
              shape: const StadiumBorder(
                  side: BorderSide(width: 2, color: Colors.black)),
              child: const Text("data"),
            )
          ],
        ),
      ),
    );
  }
}
