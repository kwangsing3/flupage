import '../../interface.dart';
import 'package:flutter/material.dart';

///dev: Icon page
class Page3 extends StatelessWidget {
  Page3({super.key, ApiMstShip? input}) {
    ship = input ?? ApiMstShip();
  }
  ApiMstShip? ship;
  @override
  Widget build(BuildContext context) {
    // 接收傳遞過來的參數
    final ship = ModalRoute.of(context)?.settings.arguments as ApiMstShip?;

    return Scaffold(
      appBar: AppBar(title: Text('Second Page')),

      body: Text(ship!.api_name == '' ? 'unknown' : ship.api_name),
    );
  }
}
