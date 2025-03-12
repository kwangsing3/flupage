import '../../interface.dart';
import 'package:flutter/material.dart';

class Page2 extends StatefulWidget {
  const Page2({super.key});
  @override
  State<StatefulWidget> createState() => _Page2State();
}

class _Page2State extends State<Page2> {
  List<ApiMstShip> ships = [];
  @override
  void initState() {
    super.initState();
    _loadJsonData();
  }

  // 读取 JSON 文件并解析
  Future<void> _loadJsonData() async {
    await loadJsonData();
    setState(() {
      ships =
          kancolleData.api_data.api_mst_ship!
              .where((e) => e.api_sortno != null)
              .toList();
      _sortList();
    });
  }

  // 排序功能
  void _sortList() {
    setState(() {
      ships.sort((a, b) => (a.api_sortno! > b.api_sortno! ? 1 : -1)); // 按標題排序
    });
  }

  @override
  Widget build(BuildContext context) {
    return ships.isEmpty
        ? Center(child: CircularProgressIndicator())
        : Expanded(
          child: ListView(
            children: [
              Row(
                children: [
                  // Header Column
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ElevatedButton(
                      onPressed: _sortList,
                      child: Text(
                        '索引ID',
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ), // Header Column
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      '名稱',
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
              Divider(), // Header 下方的分隔線
              ...ships.map((item) {
                return ListTile(
                  onTap: () {
                    Navigator.of(context).pushNamed('/page3', arguments: item);
                  },
                  contentPadding: EdgeInsets.all(8),
                  title: Row(
                    spacing: 20,
                    children: [
                      Expanded(
                        flex: 0,
                        child: Text(item.api_sortno.toString()),
                      ),
                      Expanded(child: Text(item.api_name)),
                      Expanded(child: Text(item.api_taik![1].toString())),
                      Expanded(child: Text(item.api_souk![1].toString())),
                      Expanded(child: Text(item.api_houg![1].toString())),
                      Expanded(child: Text(item.api_raig![1].toString())),
                      Expanded(child: Text(item.api_tyku![1].toString())),
                      Expanded(child: Text(item.api_luck![1].toString())),
                    ],
                  ),
                  subtitle: Text(convertShipClass(item.api_ctype)),
                  trailing: Icon(Icons.arrow_forward),
                );
              }),
            ],
          ),
        );
  }
}

  // @override
  // Widget build(BuildContext context) {
  //   return kancolleData.api_data.api_mst_ship!.isEmpty
  //       ? Center(child: CircularProgressIndicator())
  //       : Flexible(
  //         child: ListView.builder(
  //           itemExtent: 50, // 固定高度可以優化效能
  //           itemCount: kancolleData.api_data.api_mst_ship!.length,
  //           itemBuilder: (BuildContext context, int index) {
  //             return Row(
  //               spacing: 2,
  //               children: [
  //                 Text(
  //                   '【${kancolleData.api_data.api_mst_ship![index].api_sortno}】',
  //                 ),
  //                 Text(kancolleData.api_data.api_mst_ship![index].api_name),
  //                 Text("1"),
  //                 Text("1"),
  //                 Text("1"),
  //               ],
  //             );
  //           },
  //         ),
  //       );
  // }
  
 
 