import 'package:flutter/material.dart';

class ListViewWidget extends StatelessWidget {
  const ListViewWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: const [
        ListTile(
          title: Text('测试文本'),
        ),
        ListTile(
          title: Text('测试文本'),
        ),
        ListTile(
          title: Text('测试文本'),
        ),
        ListTile(
          title: Text('测试文本'),
        ),
        ListTile(
          title: Text('测试文本'),
        ),
        ListTile(
          title: Text('测试文本'),
        ),
        ListTile(
          title: Text('测试文本'),
        ),
        ListTile(
          title: Text('测试文本'),
        ),
        ListTile(
          title: Text('测试文本'),
        ),
      ],
    );
  }
}

class CustomListView extends StatelessWidget {
  const CustomListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ListView(
        children: const [
          ListTile(
            leading: Icon(
              Icons.assignment_outlined,
              color: Colors.redAccent,
            ),
            title: Text('全部订单'),
          ),
          Divider(),
          ListTile(
            leading: Icon(
              Icons.payment_outlined,
              color: Colors.greenAccent,
            ),
            title: Text('支付方式'),
          ),
          Divider(),
          ListTile(
            leading: Icon(
              Icons.train_outlined,
              color: Colors.orangeAccent,
            ),
            title: Text('物流状态'),
          ),
          Divider(),
          ListTile(
            leading: Icon(
              Icons.favorite_outline,
              color: Colors.redAccent,
            ),
            title: Text('个人收藏'),
          ),
          Divider(),
          ListTile(
            leading: Icon(
              Icons.wechat_outlined,
              color: Colors.purpleAccent,
            ),
            title: Text('微信客服'),
          ),
          Divider(),
        ],
      ),
    );
  }
}

class GraphTextListView extends StatelessWidget {
  const GraphTextListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.all(10),
      children: [
        Image.network('https://www.itying.com/images/flutter/1.png'),
        Container(
          height: 44,
          padding: const EdgeInsets.fromLTRB(0, 10, 0, 10),
          child: const Text(
            '我是一个标题',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 18,
            ),
          ),
        ),

        Image.network('https://www.itying.com/images/flutter/2.png'),
        Container(
          height: 44,
          padding: const EdgeInsets.fromLTRB(0, 10, 0, 10),
          child: const Text(
            '我是一个标题',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 18,
            ),
          ),
        ),

        Image.network('https://www.itying.com/images/flutter/3.png'),
        Container(
          height: 44,
          padding: const EdgeInsets.fromLTRB(0, 10, 0, 10),
          child: const Text(
            '我是一个标题',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 18,
            ),
          ),
        ),

        Image.network('https://www.itying.com/images/flutter/4.png'),
        Container(
          height: 44,
          padding: const EdgeInsets.fromLTRB(0, 10, 0, 10),
          child: const Text(
            '我是一个标题',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 18,
            ),
          ),
        ),

        Image.network('https://www.itying.com/images/flutter/1.png'),
        Container(
          height: 44,
          padding: const EdgeInsets.fromLTRB(0, 10, 0, 10),
          child: const Text(
            '我是一个标题',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 18,
            ),
          ),
        ),
      ],
    );
  }
}
