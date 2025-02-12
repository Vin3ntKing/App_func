import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  //instance track the current log in user
  final user = FirebaseAuth.instance.currentUser!;

  // sign user out 
  void signUserout() {
    FirebaseAuth.instance.signOut();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(actions: [
        IconButton(onPressed: signUserout, icon: Icon(Icons.logout))
        ]),
      body: Center(
        child: Text("LOGGED IN AS: "+user.email!,
        style: TextStyle(fontSize: 20),
      )),
    );
  }
}