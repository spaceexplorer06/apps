import 'package:app/Account.dart';
import 'package:app/Home.dart';
import 'package:app/Settings_app.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class ViewScreen extends StatefulWidget {
  const ViewScreen({super.key});

  @override
  State<ViewScreen> createState() => _ViewScreenState();
}

enum MenuAction { Logout }

class _ViewScreenState extends State<ViewScreen> {
  final currentUser = FirebaseAuth.instance.currentUser!;
  // edit field
  Future<void> editField(String field) async {}
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        actions: const <Widget>[
          IconButton(
            onPressed: null,
            icon: Icon(
              Icons.notifications,
              color: Colors.black,
            ),
          )
        ],
        backgroundColor: const Color.fromARGB(255, 255, 255, 255),
      ),
      drawer: Drawer(
        child: Container(
          color: const Color.fromARGB(255, 210, 255, 211),
          child: ListView(
            children: [
              const DrawerHeader(
                  child: Center(
                      child: Text(
                "HELLO",
                style: TextStyle(fontSize: 70),
              ))),
              const ListTile(
                leading: Icon(Icons.home),
                title: Text(
                  "Home Page",
                  style: TextStyle(fontSize: 20),
                ),
              ),
              ListTile(
                leading: const Icon(Icons.people),
                title: const Text(
                  "Account",
                  style: TextStyle(fontSize: 20),
                ),
                onTap: () {
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => const Account()));
                },
              ),
              ListTile(
                leading: const Icon(Icons.settings),
                title: const Text(
                  "Settings",
                  style: TextStyle(fontSize: 20),
                ),
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => const SettingsApp()));
                },
              ),
              ListTile(
                leading: const Icon(Icons.logout),
                title: const Text(
                  "Logout",
                  style: TextStyle(fontSize: 20),
                ),
                onTap: () async {
                  final shouldLogout = await showlogoutDialog(context);
                  if (shouldLogout) {
                    await FirebaseAuth.instance.signOut();
                    Navigator.of(context)
                        .pushNamedAndRemoveUntil('/login/', (_) => false);
                  }
                },
              ),
            ],
          ),
        ),
      ),
      body: Column(
        children: [
          const Text(
            "Search Destination : ",
            style: TextStyle(fontSize: 25),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: TextField(
              decoration: InputDecoration(
                  prefixIcon: const Icon(Icons.search),
                  hintText: "Search here...",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                  )),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(25.0),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: const Image(
                image: AssetImage(
                  'assets/Images/California.jpg',
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
