import 'package:flutter/material.dart';
import 'package:young_lite/views/test/search.dart';
import 'package:young_lite/widgets/button.dart';
import 'package:young_lite/widgets/gridview.dart';
import 'package:young_lite/widgets/icons.dart';
import 'package:young_lite/widgets/listview.dart';
import 'package:young_lite/widgets/wrap.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('你好, Flutter'),
        ),
        body: const SearchAndHistory(),
      ),
    );
  }
}





