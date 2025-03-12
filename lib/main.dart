import 'package:flutter/material.dart';
import 'components/pages/homepage/home_page.dart';
import 'components/pages/page_3.dart';
import 'interface.dart';

void main() => runApp(const MyApp());
ApiData kancolleData = ApiData();

///Entry Point
class MyApp extends StatefulWidget {
  const MyApp({super.key});
  @override
  State<StatefulWidget> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(useMaterial3: true),
      home: MyHomePage(),
      routes: {
        '/page3': (context) => Page3(), // 添加這一行
      },
      onGenerateRoute: (settings) {
        if (settings.name == '/page3') {
          final ApiMstShip ship = settings.arguments as ApiMstShip;
          return MaterialPageRoute(
            builder: (context) {
              return Page3(input: ship);
            },
          );
        }
        assert(false, '需要實現 ${settings.name}');
        return null;
      },
    );
  }
}
