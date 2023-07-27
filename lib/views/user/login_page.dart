import 'package:flutter/material.dart';
import 'package:young_lite/enums/login_type.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final LoginType _loginType = LoginType.Phone;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
    );
  }
}