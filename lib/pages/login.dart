import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:young_lite/common/constant.dart';
import 'package:young_lite/pages/home.dart';
import 'package:http/http.dart' as http;

class LoginSubmitWidget extends StatefulWidget {
  LoginSubmitWidget({super.key});

  @override
  State createState() => _LoginSubmitWidgetState();
}

class _LoginSubmitWidgetState extends State<LoginSubmitWidget> {
  TextEditingController _usernameController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();
  bool _isLoading = false;

  void _login() {
    String username = _usernameController.text;
    String password = _passwordController.text;

    setState(() {
      _isLoading = true;
    });

    _authenticate(username, password).then((success) {
      if (success) {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) => HomePage()),
        );
      } else {
        showDialog(
          context: context,
          builder: (BuildContext context) {
            return AlertDialog(
              title: Text('登录失败'),
              content: Text('用户名或密码不正确'),
              actions: [
                TextButton(
                  child: Text('确定'),
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                ),
              ],
            );
          },
        );
      }
    }).catchError((error) {
      // 处理异常情况，例如网络连接失败
      showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text('登录失败'),
            content: Text('网络连接失败，请检查网络设置'),
            actions: [
              TextButton(
                child: Text('确定'),
                onPressed: () {
                  Navigator.of(context).pop();
                },
              ),
            ],
          );
        },
      );
    }).whenComplete(() {
      // 完成登录验证，停止加载指示器
      setState(() {
        _isLoading = false;
      });
    });
  }

  // 用户身份验证函数
  Future<bool> _authenticate(String username, String password) async {
    String url = 'http://localhost:1207/user/login';
    Map<String, String> headers = {'Content-Type': 'application/json'};
    Map<String, String> body = {'username': username, 'password': password};

    print('准备请求');
    print(username);
    print(password);
    try {
      var response =
          await http.post(Uri.parse(url), headers: headers, body: body);

      print(response);
      if (response.statusCode == 200) {
        // 登录成功，返回 true
        print(response.body);
        return true;
      } else {
        // 登录失败，返回 false
        print(response.body);
        return false;
      }
    } catch (e) {
      // 发生异常，返回 false
      print('出错了');
      throw Exception();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width - 4 * OS_EDGE,
      margin: EdgeInsets.symmetric(horizontal: OS_EDGE * 2),
      padding: const EdgeInsets.symmetric(vertical: 15),
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(15)),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          LoginInputWidget(
            uController: _usernameController,
            pController: _passwordController,
          ),
          _isLoading
              ? const CircularProgressIndicator()
              : ElevatedButton(
                  onPressed: _login,
                  child: const Text('登录'),
                ),
        ],
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
  LoginInputWidget({super.key, required uController, required pController});

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
            style: const TextStyle(letterSpacing: 0.5),
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
            obscureText: _blindfold,
            style: const TextStyle(letterSpacing: 0.5),
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
          LoginSubmitWidget(),
        ],
      ),
    ),
  ));
}
