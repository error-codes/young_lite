import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

// class LoginPage extends StatefulWidget {
//   const LoginPage({super.key});
//
//   @override
//   State<LoginPage> createState() => _LoginPageState();
// }
//
// class _LoginPageState extends State<LoginPage> {
//   String? username;
//   String? password;
//
//   bool showSuccess = false;
//   SwiperController _swiperController = new SwiperController();
//
//   _login() async {
//     if (username == "" ||
//         password == "" ||
//         username == null ||
//         password == null) {
//       return;
//     }
//     showToast(context)
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return const Placeholder();
//   }
// }
class LoginWidget extends StatefulWidget {
  const LoginWidget({super.key});

  @override
  State<LoginWidget> createState() => _LoginWidgetState();
}

class _LoginWidgetState extends State<LoginWidget> {
  bool _blindfold = true;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(16.0),
      child: Column(
        children: [
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15.0),
              color: const Color(0xFFEEEEEE),
            ),
            child: const TextField(
              decoration: InputDecoration(
                contentPadding: EdgeInsets.only(left: 18.0, top: 18.0, bottom: 18.0),
                hintText: '请输入用户名',
                border: InputBorder.none,
              ),
              style: TextStyle(
                color: Color(0xFF818181),
              ),
            ),
          ),
          const SizedBox(height: 8.0,),
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15.0),
              color: const Color(0xFFEEEEEE),
            ),
            child: TextField(
              obscureText: _blindfold,
              style: const TextStyle(
                color: Color(0xFF818181),
              ),
              decoration: InputDecoration(
                contentPadding: const EdgeInsets.only(left: 18.0, top: 18.0, bottom: 18.0),
                hintText: '请输入密码',
                border: InputBorder.none,
                suffixIcon: IconButton(
                  onPressed: () {
                    setState(() {
                      _blindfold = !_blindfold;
                    });
                  },
                  icon: Icon(
                      _blindfold ? Icons.visibility : Icons.visibility_off),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class WelcomeImgWidget extends StatelessWidget {
  const WelcomeImgWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 14, right: 14),
      child: SizedBox(
        // width: 322,
        // height: 196,
        child: SvgPicture.asset(
          'images/login.svg',
          fit: BoxFit.contain,
        ),
      ),
    );
  }
}

class WelcomeWidget extends StatelessWidget {
  const WelcomeWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Padding(
          padding: EdgeInsets.only(left: 43, top: 57),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                '早安',
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
              Text(
                '欢迎来到 Young',
                style: TextStyle(
                  fontSize: 12,
                  color: Color(0xFF7c7c7c),
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}

void main() {
  runApp(MaterialApp(
    title: 'Flutter Demo',
    theme: ThemeData(
      colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      useMaterial3: true,
    ),
    home: const Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          WelcomeWidget(),
          Expanded(child: WelcomeImgWidget()),
          LoginWidget(),
        ],
      ),
    ),
  ));
}
