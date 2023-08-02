import 'package:flutter/material.dart';

class GridViewWidget extends StatelessWidget {
  GridViewWidget({super.key});

  List<Center> icons = const [
    Center(child: Icon(Icons.home)),
    Center(child: Icon(Icons.fastfood_outlined)),
    Center(child: Icon(Icons.cake_outlined)),
    Center(child: Icon(Icons.rice_bowl_outlined)),
    Center(child: Icon(Icons.emoji_food_beverage_outlined)),
  ];

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Expanded(
            child: GridView.count(
              crossAxisCount: 3,
              childAspectRatio: 1.0,
              children: const [
                Icon(Icons.home_outlined),
                Icon(Icons.directions_bike_outlined),
                Icon(Icons.local_shipping_outlined),
                Icon(Icons.directions_run_outlined),
                Icon(Icons.local_taxi_outlined),
                Text('这块采用 count 方式构建'),
              ],
            ),
          ),
          const Divider(),
          Expanded(
            child: GridView.extent(
              maxCrossAxisExtent: 200.0,
              childAspectRatio: 1.0,
              children: const [
                Icon(Icons.home),
                Icon(Icons.fastfood_outlined),
                Icon(Icons.cake_outlined),
                Icon(Icons.rice_bowl_outlined),
                Icon(Icons.emoji_food_beverage_outlined),
                Text('这块采用 extent 方式构建'),
              ],
            ),
          ),
          const Divider(),
          Expanded(
            child: GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10,
                ),
                itemCount: 6,
                itemBuilder: (context, index) {
                  return Container(
                    height: 400,
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: const Color.fromRGBO(233, 233, 233, 0.9),
                        width: 1,
                      ),
                    ),
                    child: index < 5
                        ? icons[index]
                        : const Text(
                            '这块采用 builder 方式构建',
                            textAlign: TextAlign.center,
                          ),
                  );
                }),
          ),
        ],
      ),
    );
  }
}

class DynamicGridView extends StatelessWidget {
  const DynamicGridView({super.key});

  List<Widget> _getDataList(int count) {
    List<Widget> dataList = [];
    for (int i = 0; i < count; i++) {
      Widget widget = Container(
        decoration: BoxDecoration(
          border: Border.all(
            color: i % 2 == 0
                ? const Color.fromRGBO(233, 0, 0, 0.9)
                : const Color.fromRGBO(0, 0, 233, 0.9),
            width: 1,
          ),
        ),
        child: Column(
          children: <Widget>[
            const SizedBox(height: 12),
            Text(
              '这是第 $i 段文本',
              textAlign: TextAlign.center,
              style: const TextStyle(fontSize: 20),
            ),
          ],
        ),
      );
      dataList.add(widget);
    }
    return dataList;
  }

  List<Widget> _getGraphTextList(int count) {
    List<Widget> dataList = [];
    for (int i = 0; i < count; i++) {
      Widget widget = Container(
        decoration: BoxDecoration(
          border: Border.all(
            color: i % 2 == 0
                ? const Color.fromRGBO(233, 0, 0, 0.9)
                : const Color.fromRGBO(0, 0, 233, 0.9),
            width: 1,
          ),
        ),
        child: Column(
          children: <Widget>[
            Image.asset('images/$i.png'),
            const SizedBox(height: 12),
            Text(
              '图片 $i',
              textAlign: TextAlign.center,
              style: const TextStyle(fontSize: 20),
            ),
          ],
        ),
      );
      dataList.add(widget);
    }
    return dataList;
  }

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisSpacing: 20,
      mainAxisSpacing: 20,
      padding: const EdgeInsets.all(10),
      crossAxisCount: 3,
      childAspectRatio: 0.8,
      children: _getDataList(6),
    );
  }
}
