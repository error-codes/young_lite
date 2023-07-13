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
                contentPadding:
                    EdgeInsets.only(left: 18.0, top: 18.0, bottom: 18.0),
                hintText: '请输入用户名',
                border: InputBorder.none,
              ),
              style: TextStyle(
                color: Color(0xFF818181),
              ),
            ),
          ),
          const SizedBox(
            height: 8.0,
          ),
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
                contentPadding:
                    const EdgeInsets.only(left: 18.0, top: 18.0, bottom: 18.0),
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

class WelcomeWidget extends StatefulWidget {
  const WelcomeWidget({super.key});

  @override
  State createState() => _WelcomeWidgetState();
}

class _WelcomeWidgetState extends State<WelcomeWidget> {
  String? _welcome = "";

  @override
  void initState() {
    DateTime dateTime = DateTime.now();
    setState(() {
      switch (dateTime.hour) {
        case 0:
        case 1:
        case 2:
        case 3:
        case 4:
        case 5:
          _welcome = "还再熬夜呢？比你厉害的人都睡了";
          break;
        case 6:
        case 7:
        case 8:
          _welcome = "新的一天，早上好啊，记得吃早饭喔";
          break;
        case 9:
        case 10:
        case 11:
          _welcome = "上午好，努力加油吧，冲呀";
          break;
        case 12:
        case 13:
          _welcome = "中午好，吃午饭了吗";
          break;
        case 14:
        case 15:
          _welcome = "下午好，中午不睡，下午崩溃";
        case 16:
        case 17:
          _welcome = "下午好，多走动走动，别久坐";
          break;
        case 18:
        case 19:
          _welcome = "傍晚好，该吃晚饭咯";
          break;
        case 20:
        case 21:
          _welcome = "晚上好，早点上床休息吧";
          break;
        case 22:
        case 23:
          _welcome = "晚上好，快休息吧，明天见";
          break;
      }
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 43),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            '$_welcome',
            style: const TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.w900,
              color: Colors.black,
            ),
          ),
          Container(height: 5,),
          const Text(
            '欢迎来到 Young',
            style: TextStyle(
              fontSize: 16,
              color: Color(0xFF999999),
              letterSpacing: 2,
            ),
          ),
          Container(height: 40,),
          Center(
            child: SvgPicture.asset(
              'images/login.svg',
              width: 322,
              height: 175,
            ),
          )
        ],
      ),
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
          LoginWidget(),
        ],
      ),
    ),
  ));
}
