import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:schaffen_assignment/UI/Authentication_Screen/login_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final _auth = FirebaseAuth.instance;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: const Center(
        child: Text("Home Screen"),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          await _auth.signOut();
          Navigator.pushReplacement(
              context, MaterialPageRoute(builder: (context) => Loginscreen()));
        },
        child: const Icon(Icons.logout),
      ),
    );
  }
}
