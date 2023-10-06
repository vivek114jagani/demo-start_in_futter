import 'package:demo/screen/show_dialog.dart';
import 'package:flutter/material.dart';

class DialogPage extends StatelessWidget {
  const DialogPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // FloatingActionButton.extended(
            //     onPressed: () {},
            //     label: const Row(
            //       children: [Icon(Icons.add), Text("Add Button")],
            //     ))

            ElevatedButton(
              style: ElevatedButton.styleFrom(elevation: 5),
              onPressed: () {
                showDialog(
                    context: context,
                    barrierDismissible: false,
                    barrierColor: Colors.black.withOpacity(0.6),
                    builder: (context) => showMyAlertDialog(context));
              },
              child: const Text("Alert Dialog"),
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(elevation: 50),
              onPressed: () {
                showDialog(
                  context: context,
                  barrierDismissible: false,
                  barrierColor: Colors.black.withOpacity(0.6),
                  builder: (context) => showMyDialog(context),
                );
              },
              child: const Text("Dialog"),
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(elevation: 5),
              onPressed: () {
                showGeneralDialog(
                    context: context,
                    pageBuilder: (context, animation, secondaryAnimation) =>
                        const ShowGeneralDialogPage());
              },
              child: const Text("Show General Dialog"),
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(elevation: 5),
              onPressed: () {
                showDialog(
                  context: context,
                  barrierDismissible: false,
                  barrierColor: Colors.black.withOpacity(0.6),
                  builder: (context) => const CustomSimpleDialog(),
                );
              },
              child: const Text("Show Simple Dialog"),
            )
          ],
        ),
      ),
    );
  }

  AlertDialog showMyAlertDialog(context) {
    return AlertDialog(
      // titleTextStyle: const TextStyle(),
      title: const Row(
        children: [
          Text("Exit App"),
        ],
      ),
      content: const Text("Save successfully"),
      actions: [
        TextButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: const Text("Cancel"),
        ),
        TextButton(
          onPressed: () {},
          child: const Text("Exit"),
        ),
      ],
      alignment: Alignment.center,
      actionsAlignment: MainAxisAlignment.spaceBetween,
      elevation: 50,
      backgroundColor: Colors.amber,
      actionsOverflowButtonSpacing: 20,
      icon: IconButton(
          onPressed: () {
            const Text("Exit App ");
            Navigator.pop(context);
          },
          icon: const Icon(Icons.exit_to_app)),
      iconColor: Colors.red,
    );
  }

  Dialog showMyDialog(context) {
    return Dialog(
      child: Container(
        height: 300,
        width: 300,
        decoration: const BoxDecoration(
            // color: Colors.deepPurple,
            // borderRadius: BorderRadius.circular(300),
            // shape: BoxShape.circle,
            ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const FlutterLogo(
              size: 150,
            ),
            const Text(
              "This is a Custom Dialog",
              style: TextStyle(fontSize: 20),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: const Text("Close"),
            )
          ],
        ),
      ),
    );
  }
}

class CustomSimpleDialog extends StatelessWidget {
  const CustomSimpleDialog({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SimpleDialog(
      title: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          SizedBox(
              width: 50,
              height: 50,
              child: Image.asset(
                "assets/image.jpg",
                fit: BoxFit.fitHeight,
              )),
          const Text(
            "Select Option",
            style: TextStyle(fontSize: 20),
          ),
        ],
      ),
      children: [
        Row(
          children: [
            TextButton(
              onPressed: () {},
              child: const Text("Yes"),
            ),
            TextButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text("No"),
            ),
            TextButton(
              onPressed: () {},
              child: const Text("Yes"),
            ),
            TextButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text("No"),
            ),
          ],
        ),
      ],
    );
  }
}
