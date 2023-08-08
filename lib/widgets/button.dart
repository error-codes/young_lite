import 'package:flutter/material.dart';

class ButtonWidget extends StatelessWidget {
  const ButtonWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Container(
          width: 180,
          height: 90,
          margin: const EdgeInsets.all(40),
          child: ElevatedButton(
            onPressed: () {},
            style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.redAccent),
                foregroundColor: MaterialStateProperty.all(Colors.white)),
            child: const Text('自定义宽高的普通按钮'),
          ),
        ),
        Container(
          width: 160,
          height: 80,
          margin: const EdgeInsets.all(30),
          child: TextButton(
            onPressed: () {},
            style: ButtonStyle(
              elevation: MaterialStateProperty.all(20),
              shape: MaterialStateProperty.all(
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
              ),
            ),
            child: const Text('自定义宽高圆角的文本按钮'),
          ),
        ),
        Container(
          width: 140,
          height: 70,
          margin: const EdgeInsets.all(20),
          child: OutlinedButton(
            onPressed: () {},
            style: ButtonStyle(
              foregroundColor: MaterialStateProperty.all(Colors.black),
              side: MaterialStateProperty.all(
                  const BorderSide(width: 1, color: Colors.redAccent)),
            ),
            child: const Text('自定义宽高边框的边框按钮'),
          ),
        ),
        Container(
          width: 120,
          height: 60,
          margin: const EdgeInsets.all(10),
          child: IconButton(
            onPressed: () {},
            icon: const Icon(Icons.thumb_up),
          ),
        ),
      ],
    );
  }
}

class IconButtonWidget extends StatelessWidget {
  const IconButtonWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        ElevatedButton.icon(
          icon: const Icon(Icons.send),
          label: const Text("发送"),
          onPressed: () {},
        ),
        OutlinedButton.icon(
          icon: const Icon(Icons.add),
          label: const Text("添加"),
          onPressed: () {},
        ),
        TextButton.icon(
          icon: const Icon(Icons.info),
          label: const Text("详情"),
          onPressed: () {},
        ),
      ],
    );
  }
}
