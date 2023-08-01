import 'package:flutter/material.dart';

import '../icons/icons.dart';

class IconWidget extends StatelessWidget {
  const IconWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Column(
        children: [
          Icon(
            Icons.search,
            color: Colors.red,
            size: 40,
          ),
          SizedBox(height: 10,),
          Icon(
            Icons.home,
            color: Colors.red,
            size: 40,
          ),
          SizedBox(height: 10,),
          Icon(
            Icons.search_outlined,
            color: Colors.red,
            size: 40,
          ),
          SizedBox(height: 10,),
          Icon(
            Icons.home_outlined,
            color: Colors.red,
            size: 40,
          ),
          SizedBox(height: 10,),
        ],
      ),
    );
  }
}

class CustomIcon extends StatelessWidget {
  const CustomIcon({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(YoungIcons.test, color: Colors.redAccent,),
          Icon(YoungIcons.test, color: Colors.orangeAccent,),
          Icon(YoungIcons.test, color: Colors.greenAccent,),
          Icon(YoungIcons.test, color: Colors.purpleAccent,),
        ],
      ),
    );
  }
}
