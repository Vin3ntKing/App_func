import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:modernlogintute/pages/home_page.dart';
import 'package:modernlogintute/pages/login_page.dart';

class AuthPage extends StatelessWidget {
  const AuthPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StreamBuilder<User?>(
            //stream listing to the user authenticate state changes
            stream: FirebaseAuth.instance.authStateChanges(),
            builder: (context, snapshot) {
              //situation 1: login in
              if (snapshot.hasData){
                return HomePage();
              }

              //situation 2: Not login in
              else {
                return LoginPage();
              }
            },
      ),
       
    );
  }
}