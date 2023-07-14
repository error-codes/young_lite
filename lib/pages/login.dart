import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:young_lite/common/constant.dart';

class LoginSubmitWidget extends StatefulWidget {
  Function? tap;
  Color? color;
  Color? fontColor;
  String? txt;
  LoginSubmitWidget({
    Key? key,
    this.tap,
    this.txt,
    this.color,
    this.fontColor,
  }) : super(key: key);

  @override
  State createState() => _LoginSubmitWidgetState();
}

class _LoginSubmitWidgetState extends State<LoginSubmitWidget> {
  @override
  Widget build(BuildContext context) {
    return Bounce(
      duration: Duration(milliseconds: 80),
      onPressed: () {
        if (widget.tap != null) widget.tap!();
      },
      child: Container(
        width: MediaQuery.of(context).size.width - 4 * OS_EDGE,
        margin: EdgeInsets.symmetric(horizontal: OS_EDGE * 2),
        padding: const EdgeInsets.symmetric(vertical: 15),
        decoration: BoxDecoration(
          color: widget.color ?? os_color,
          borderRadius: const BorderRadius.all(Radius.circular(15)),
        ),
        child: Center(
          child: Text(
            widget.txt ?? "登录",
            style: TextStyle(
              color: widget.fontColor ?? os_white,
              fontSize: 16,
            ),
          ),
        ),
      ),
    );
  }
}

class UnableLoginWidget extends StatefulWidget {
  UnableLoginWidget({super.key});

  @override
  State createState() => _UnableLoginWidgetState();
}

class _UnableLoginWidgetState extends State<UnableLoginWidget> {
  @override
  Widget build(BuildContext context) {
    return CupertinoButton(
      onPressed: () {
        Navigator.pushNamed(context, "/login_helper");
      },
      padding: const EdgeInsets.all(0),
      child: Container(
        margin: const EdgeInsets.only(top: 10),
        padding: EdgeInsets.symmetric(horizontal: OS_EDGE * 4),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              margin: const EdgeInsets.only(top: 2.5),
              child: const Icon(
                Icons.info_outline,
                color: Color.fromARGB(255, 129, 129, 129),
                size: 18,
              ),
            ),
            Container(width: 3),
            const Text(
              "无法登录？",
              style: TextStyle(
                color: Color.fromARGB(255, 129, 129, 129),
                fontSize: 14,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class LoginInputWidget extends StatefulWidget {
  Function? change;
  FocusNode? uFocus;
  FocusNode? pFocus;

  LoginInputWidget({super.key, this.change, this.uFocus, this.pFocus});

  @override
  State<LoginInputWidget> createState() => _LoginInputWidgetState();
}

class _LoginInputWidgetState extends State<LoginInputWidget> {
  bool _blindfold = true;

  TextEditingController uController = new TextEditingController();
  TextEditingController pController = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: MediaQuery.of(context).size.width - 4 * OS_EDGE,
          margin: EdgeInsets.symmetric(horizontal: 2 * OS_EDGE, vertical: 7.5),
          decoration: BoxDecoration(
            border: Border.all(color: const Color(0x11FFFFFF)),
            borderRadius: const BorderRadius.all(Radius.circular(15)),
            color: const Color(0x14000000),
          ),
          child: TextField(
            controller: uController,
            focusNode: widget.uFocus,
            style: const TextStyle(letterSpacing: 0.5),
            onChanged: (text) {
              widget.change!(uController.text, pController.text);
            },
            decoration: InputDecoration(
              contentPadding:
                  const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
              enabledBorder: const OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(15)),
                borderSide: BorderSide(color: Colors.transparent),
              ),
              hintText: '请输入用户名',
              hintStyle: TextStyle(color: Colors.grey[600]),
              border: const OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(15)),
              ),
            ),
          ),
        ),
        Container(
          width: MediaQuery.of(context).size.width - 4 * OS_EDGE,
          margin: EdgeInsets.symmetric(horizontal: 2 * OS_EDGE, vertical: 7.5),
          decoration: BoxDecoration(
            border: Border.all(color: const Color(0x11FFFFFF)),
            borderRadius: const BorderRadius.all(Radius.circular(15)),
            color: const Color(0x14000000),
          ),
          child: TextField(
            controller: pController,
            focusNode: widget.pFocus,
            obscureText: _blindfold,
            style: const TextStyle(letterSpacing: 0.5),
            onChanged: (text) {
              widget.change!(uController.text, pController.text);
            },
            decoration: InputDecoration(
              contentPadding:
                  const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
              enabledBorder: const OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(15)),
                  borderSide: BorderSide(color: Colors.transparent)),
              hintText: '请输入密码',
              hintStyle: TextStyle(color: Colors.grey[600]),
              border: const OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(15))),
              suffixIcon: Padding(
                padding: const EdgeInsets.only(right: 5),
                child: IconButton(
                  onPressed: () {
                    setState(() {
                      _blindfold = !_blindfold;
                    });
                  },
                  icon: Icon(
                    _blindfold ? Icons.visibility : Icons.visibility_off,
                    color: Colors.grey[400],
                  ),
                ),
              ),
            ),
          ),
        ),
        UnableLoginWidget(),
      ],
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
        default:
          _welcome = "还再熬夜呢？比你厉害的人都睡了";
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
          Container(
            height: 5,
          ),
          const Text(
            '欢迎来到 Young',
            style: TextStyle(
              fontSize: 16,
              color: Color(0xFF999999),
              letterSpacing: 2,
            ),
          ),
          Container(
            height: 40,
          ),
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
    home: Scaffold(
      body: Column(
        children: [
          const WelcomeWidget(),
          LoginInputWidget(),
        ],
      ),
    ),
  ));
}
