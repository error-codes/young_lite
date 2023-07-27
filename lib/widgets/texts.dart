import 'package:flutter/material.dart';

class TextWidget extends StatelessWidget {
  const TextWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: 200,
        height: 200,
        decoration: BoxDecoration(
          color: Colors.yellow,
          gradient: const LinearGradient(
            colors: [
              Colors.red,
              Colors.orange,
            ],
          ),
          boxShadow: const [
            BoxShadow(
              color: Colors.blue,
              offset: Offset(2.0, 2.0),
              blurRadius: 10.0,
            ),
          ],
          border: Border.all(
            color: Colors.pink,
            width: 1,
          ),
        ),
        transform: Matrix4.rotationZ(.2),
        child: const Text(
          '大家好大家好大家好大家好大家好哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈大家好大家好大家好大家好大家好哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈',
          textAlign: TextAlign.left,
          overflow: TextOverflow.fade,
          maxLines: 3,
          textScaleFactor: 1.2,
          style: TextStyle(
            fontSize: 16,
            color: Colors.black,
            fontWeight: FontWeight.w800,
            fontStyle: FontStyle.italic,
            decoration: TextDecoration.lineThrough,
            decorationColor: Colors.white,
            decorationStyle: TextDecorationStyle.dashed,
            letterSpacing: 5.0,
          ),
        ),
      ),
    );
  }
}
