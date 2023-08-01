import 'package:flutter/material.dart';

class GridViewWidget extends StatelessWidget {
  const GridViewWidget({super.key});

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
        ],
      ),
    );
  }
}

class DynamicGridView extends StatelessWidget {
  const DynamicGridView({super.key});

  List<Widget> _getListData() {
    List<Widget> listData = [];
    var tempList = listData.map((value) {
      return Container(
        decoration: BoxDecoration(
            border: Border.all(
                color: const Color.fromRGBO(233, 233, 233, 0.9), width: 1)),
        child: Column(
          children: <Widget>[
            Image.network(value['imageUrl']),
            const SizedBox(height: 12),
            Text(
              value['title'],
              textAlign: TextAlign.center,
              style: const TextStyle(fontSize: 20),
            )
          ],
        ),
      );
    });
    return tempList.toList();
  }

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
