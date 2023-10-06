import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Hello extends StatelessWidget {
  const Hello({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Flutter Containers",
          style: TextStyle(
              fontFamily: 'DancingScriptM',
              fontSize: 30,
              fontWeight: FontWeight.w700,
              color: Colors.black87),
        ),
        systemOverlayStyle: const SystemUiOverlayStyle(
          // Status bar color
          statusBarColor: Colors.red,

          // Status bar brightness (optional)
          statusBarIconBrightness: Brightness.light, // For Android (dark icons)
        ),
        centerTitle: true,
        backgroundColor: Colors.blueGrey,
        actions: const [
          Icon(
            Icons.edit,
            size: 25,
          ),
        ],
      ),
      body: Container(
        color: Colors.white70,
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(
              'assets/image2.jpg',
              width: 150,
            ),
            Image.asset(
              'assets/disaing.jpg',
              width: 150,
            ),
          ],
        ),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets
              .zero, // EdgeInset.Zero thi Drawer na Header ni uper ni jgya ma pan color aavi jaay.
          children: const [
            // Image.asset(
            //   "assets/image.jpg",
            // ),
            // CircleAvatar(
            //   backgroundImage: AssetImage("assets/image.jpg"),
            //   radius: 45,
            // ),
            // DrawerHeader(
            //   decoration: BoxDecoration(color: Colors.blueGrey),
            //   child: Text('PHOTO',
            //       style: TextStyle(
            //           fontFamily: "Roboto",
            //           fontSize: 20,
            //           color: Colors.black87)),
            // ),
            UserAccountsDrawerHeader(
              decoration: BoxDecoration(color: Colors.blueGrey),
              accountName: Text(
                'Vivek Jgani',
                style: TextStyle(fontSize: 20),
              ),
              accountEmail: Text('vivekjagani@gmail.com'),
              currentAccountPicture: CircleAvatar(
                backgroundImage: NetworkImage(
                    "https://images.unsplash.com/photo-1503023345310-bd7c1de61c7d?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8aHVtYW58ZW58MHx8MHx8&w=1000&q=80"),
              ),
            ),
            ListTile(
              leading: Icon(
                Icons.person,
                size: 40,
              ),
              title: Text(
                'Profile',
                style: TextStyle(
                    fontFamily: 'Roboto', fontSize: 20, color: Colors.black),
              ),
              subtitle: Text('personal'),
              trailing: Icon(Icons.edit),
            ),
            ListTile(
              leading: Icon(
                Icons.email,
                size: 40,
              ),
              title: Text(
                'E-mali',
                style: TextStyle(
                    fontFamily: 'Roboto', fontSize: 20, color: Colors.black),
              ),
              subtitle: Text('vivekjagani047@gmail.com'),
              trailing: Icon(Icons.send),
            ),
          ],
        ),
      ),
      // floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,  // Location set karava mate.  //OR
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        // mini: true,
        backgroundColor: Colors.blueGrey,
        child: const Icon(
          Icons.add,
          size: 35,
        ),
      ),
    );
  }
}
