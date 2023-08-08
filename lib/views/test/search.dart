import 'package:flutter/material.dart';
import 'package:young_lite/widgets/wrap.dart';

class SearchAndHistory extends StatelessWidget {
  const SearchAndHistory({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: ListView(
        children: [
          const Row(
            children: [
              Icon(Icons.arrow_back_outlined, color: Colors.black),
            ],
          ),
          const Text(
            '热搜',
            style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
          ),
          const Divider(),
          const SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.all(10),
            child: Wrap(
              spacing: 10,
              runSpacing: 30,
              children: [
                ButtonDemo('外卖', onPressed: () {}),
                ButtonDemo('美团买菜', onPressed: () {}),
                ButtonDemo('超时便利', onPressed: () {}),
                ButtonDemo('品质百货', onPressed: () {}),
                ButtonDemo('看病买药', onPressed: () {}),
                ButtonDemo('美食团购', onPressed: () {}),
                ButtonDemo('酒店民宿', onPressed: () {}),
                ButtonDemo('休闲玩乐', onPressed: () {}),
                ButtonDemo('打车', onPressed: () {}),
                ButtonDemo('看电影', onPressed: () {}),
                ButtonDemo('饮品小吃', onPressed: () {}),
                ButtonDemo('理发洗脸', onPressed: () {}),
                ButtonDemo('火车票机票', onPressed: () {}),
                ButtonDemo('骑车', onPressed: () {}),
                ButtonDemo('拼好饭', onPressed: () {}),
              ],
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          const Row(
            children: [
              Text(
                '历史记录',
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              ),
            ],
          ),
          const Divider(),
          Padding(
            padding: const EdgeInsets.all(10),
            child: const Column(
              children: [
                Text('外卖', style: TextStyle(

                ),),
                Divider(),
                Text('美团买菜'),
                Divider(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
