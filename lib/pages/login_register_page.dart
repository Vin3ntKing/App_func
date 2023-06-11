import 'package:flutter/material.dart';
import 'package:modernlogintute/pages/login_page.dart';
import 'package:modernlogintute/pages/register_pages.dart';

class LoginOrRegisterPage extends StatefulWidget {
  const LoginOrRegisterPage({super.key});

  @override
  State<LoginOrRegisterPage> createState() => _LoginOrRegisterPageState();
}

class _LoginOrRegisterPageState extends State<LoginOrRegisterPage> {
  //initailly show login page
  bool showLoginPgae = true;

  //toggle between login and register apge
  void togglePages() {
    setState(() {
      showLoginPgae = !showLoginPgae;
    });
  }
  @override
  Widget build(BuildContext context) {
    if (showLoginPgae) {
      return LoginPage(
        onTap: togglePages,
      );
    } else {
      return RegisterPage(
        onTap: togglePages,
      );
    }
  }
}