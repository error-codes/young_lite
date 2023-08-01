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
    return Center(
      child: ListView(
        children: [
          ListTile(
            leading: Image.asset('images/1.png'),
            title: const Text('华北黄淮高温雨今起强势登场'),
            subtitle: const Text('中国天气网讯 21日开始，华北黄淮高温雨今起强势登场'),
          ),
          const Divider(),
          ListTile(
            leading: Image.asset('images/2.png'),
            title: const Text('保监局50天开32罚单 “断供”违规资金为房市降温'),
            subtitle: const Text('中国天气网讯 保监局50天开32罚单 “断供”违规资金为房市降温'),
          ),
          const Divider(),
          ListTile(
            trailing: Image.asset('images/3.png'),
            title: const Text('华北黄淮高温雨今起强势登场'),
            subtitle: const Text('中国天气网讯 21日开始，华北黄淮高温雨今起强势登场'),
          ),
          const Divider(),
          ListTile(
            leading: Image.asset('images/4.png'),
            title: const Text('普京现身俄海军节阅兵：乘艇检阅军舰'),
          ),
          const Divider(),
          ListTile(
            leading: Image.asset('images/5.png'),
            title: const Text('鸿星尔克捐1个亿帮助困难残疾群体 网友：企业有担当'),
          ),
          const Divider(),
          ListTile(
            leading: Image.asset('images/6.png'),
            title: const Text('行业冥灯？老罗最好祈祷苹果的AR能成'),
          ),
          const Divider(),
          ListTile(
            trailing: Image.asset('images/7.png'),
            title: const Text('鸿星尔克捐1个亿帮助困难残疾群体 网友：企业有担当'),
          ),
          const Divider(),
        ],
      ),
    );
  }
}

class GraphTextTitleListView extends StatelessWidget {
  const GraphTextTitleListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.all(10),
      children: [
        Image.asset('images/1.png'),
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
        Image.asset('images/2.png'),
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
        Image.asset('images/3.png'),
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
        Image.asset('images/4.png'),
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
        Image.asset('images/1.png'),
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

class HorizontalListView extends StatelessWidget {
  const HorizontalListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 180,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          Container(
            width: 90.0,
            color: Colors.redAccent,
          ),
          Container(
            width: 90.0,
            color: Colors.orangeAccent,
            child: Column(
              children: [
                Image.asset('images/1.png'),
                const Text('我说我是一个文本，你信吗？'),
              ],
            ),
          ),
          Container(
            width: 90.0,
            color: Colors.blueAccent,
          ),
          Container(
            width: 90.0,
            color: Colors.deepOrangeAccent,
          ),
          Container(
            width: 90.0,
            color: Colors.greenAccent,
            child: Column(
              children: [
                Image.asset('images/2.png'),
                const Text('我说我是一个按钮，你信吗？'),
              ],
            ),
          ),
          Container(
            width: 90.0,
            color: Colors.deepPurpleAccent,
          ),
        ],
      ),
    );
  }
}

class DynamicListView extends StatelessWidget {
  List<Widget> widgetList = [];
  List<String> stringList = [];

  DynamicListView({super.key}) {
    for (int i = 0; i < 5; i++) {
      stringList.add('我是第 $i 段文本, 我采用 ListView.builder 实现');
    }
  }

  List<Widget> _initListView() {
    for (int i = 0; i < 5; i++) {
      widgetList.add(ListTile(
        title: Text('我是第 $i 段文本, 我采用 for 循环构建 ListTitle 实现'),
      ));
    }
    return widgetList;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 189,
      height: 380,
      child: Column(
        children: [
          Expanded(
            child: ListView(
              children: _initListView(),
            ),
          ),
          const Divider(),
          Expanded(
            child: ListView.builder(
              itemCount: stringList.length,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text(stringList[index]),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
