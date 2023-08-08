import 'package:flutter/material.dart';

class WrapWidget extends StatelessWidget {
  const WrapWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(padding: const EdgeInsets.all(3),
    child: Wrap(
      spacing: 25,
      runSpacing: 50,
      children: [
        ButtonDemo('第1', onPressed: (){}),
        ButtonDemo('第22', onPressed: (){}),
        ButtonDemo('第333', onPressed: (){}),
        ButtonDemo('第4444', onPressed: (){}),
        ButtonDemo('第5555555555', onPressed: (){}),
        ButtonDemo('第666666', onPressed: (){}),
        ButtonDemo('第7777777', onPressed: (){}),
        ButtonDemo('第88888888', onPressed: (){}),
        ButtonDemo('第999999999', onPressed: (){}),
      ],
    ),);
  }
}

class ButtonDemo extends StatelessWidget {
  String text;

  void Function()? onPressed;

  ButtonDemo(this.text, {Key? key, required this.onPressed}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all(Colors.deepPurple),
        foregroundColor: MaterialStateProperty.all(Colors.white),
      ),
      child: Text(text),
    );
  }
}
