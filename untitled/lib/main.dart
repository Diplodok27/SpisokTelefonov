import 'package:flutter/material.dart';

const List<String> users = <String>[
  "Xiaomi 13", "Xiaomi 12T Pro", "Xiaomi mi 11", "Xiaomi Redmi 10", "Xiaomi Mi 9", "Xiaomi 8"
];

const List<String> links = [
  'https://store123.ru/upload/iblock/3ea/bug5btsv7axalo6i0lwy2w027scyt7j3.png',
  'https://cdn1.ozone.ru/s3/multimedia-m/6674366542.jpg',
  'https://kitsmart.ru/uploads/store/product/f5ec7a558347b22ef1e2e63bbaa655ea.png',
  'https://www.sp-computer.ru/upload/iblock/6ae/6ae1af655b32e266eddc9bb2ccb8ec20.jpg',
  'https://pe-so.ru/image/cache/catalog/house/00-00042854-1000x1000.png',
  'https://static.insales-cdn.com/images/products/1/3112/252439592/mi8black.jpg'
];

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text("Список телефонов")), //Вольнова Скоков
        body: buildListView(),
      ),
    );
  }

  Widget buildListView() {
    return ListView.builder(
      padding: const EdgeInsets.all(8),
      itemCount: users.length,
      itemBuilder: (BuildContext context, int index) {
        return buildListItem(index);
      },
    );
  }

  Widget buildListItem(int index) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Center(child: Text(users[index], textAlign: TextAlign.center, style: TextStyle(fontSize: 22))),
          Center(child: Image.network(links[index])),
        ],
      ),
    );
  }
}
