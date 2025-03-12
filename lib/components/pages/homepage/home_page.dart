import 'package:flutter/material.dart';
import '../page_2.dart';
import '../page_3.dart';

class NavDestination {
  const NavDestination(this.label, this.icon, this.selectedIcon, this.pages);
  final String label;
  final Widget icon;
  final Widget selectedIcon;
  final Widget pages;
}

/// 頁面結構
List<NavDestination> destinations = <NavDestination>[
  const NavDestination(
    'Page1',
    Icon(Icons.widgets_outlined),
    Icon(Icons.widgets),
    Page2(),
  ),
  const NavDestination(
    'Page2',
    Icon(Icons.format_paint_outlined),
    Icon(Icons.format_paint),
    Page2(),
  ),
  NavDestination(
    'Page3',
    const Icon(Icons.settings_outlined),
    const Icon(Icons.settings),
    Page3(),
  ),
];

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});
  @override
  MyHomePageState createState() => MyHomePageState();
}

class MyHomePageState extends State<MyHomePage> {
  ///頁面INDEX
  int _selectedIndex = 0;

  /// 寬度判斷切換元件
  late bool showNavigationDrawer;
  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    showNavigationDrawer = MediaQuery.of(context).size.width >= 450;
  }

  void handleScreenOnChanged(int selectedScreen) {
    setState(() {
      _selectedIndex = selectedScreen;
    });
  }

  @override
  Widget build(BuildContext context) {
    return showNavigationDrawer
        ? buildDrawerScaffold(context)
        : buildBottomBarScaffold();
  }

  ///標準寬度渲染
  Widget buildBottomBarScaffold() {
    return Scaffold(
      key: scaffoldKey,
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            const VerticalDivider(thickness: 1, width: 1),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[destinations[_selectedIndex].pages],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: NavigationBar(
        selectedIndex: _selectedIndex,
        onDestinationSelected: handleScreenOnChanged,
        destinations:
            destinations.map((NavDestination destination) {
              return NavigationDestination(
                label: destination.label,
                icon: destination.icon,
                selectedIcon: destination.selectedIcon,
                tooltip: destination.label,
              );
            }).toList(),
      ),
      drawer: NavigationDrawer(
        onDestinationSelected: handleScreenOnChanged,
        selectedIndex: _selectedIndex,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.fromLTRB(28, 16, 16, 10),
            child: Text(
              'Header',
              style: Theme.of(context).textTheme.titleSmall,
            ),
          ),
          ...destinations.map((NavDestination destination) {
            return NavigationDrawerDestination(
              label: Text(destination.label),
              icon: destination.icon,
              selectedIcon: destination.selectedIcon,
            );
          }),
          const Padding(
            padding: EdgeInsets.fromLTRB(28, 16, 28, 10),
            child: Divider(),
          ),
        ],
      ),
    );
  }

  ///低寬度渲染
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();
  Widget buildDrawerScaffold(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      body: SafeArea(
        bottom: false,
        top: false,
        child: Row(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 5),
              child: NavigationRail(
                minWidth: 50,
                destinations:
                    destinations.map((NavDestination destination) {
                      return NavigationRailDestination(
                        label: Text(destination.label),
                        icon: destination.icon,
                        selectedIcon: destination.selectedIcon,
                      );
                    }).toList(),
                selectedIndex: _selectedIndex,
                useIndicator: true,
                onDestinationSelected: handleScreenOnChanged,
              ),
            ),
            const VerticalDivider(thickness: 1, width: 1),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[destinations[_selectedIndex].pages],
              ),
            ),
          ],
        ),
      ),
      drawer: NavigationDrawer(
        onDestinationSelected: handleScreenOnChanged,
        selectedIndex: _selectedIndex,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.fromLTRB(28, 16, 16, 10),
            child: Text(
              'Header',
              style: Theme.of(context).textTheme.titleSmall,
            ),
          ),
          ...destinations.map((NavDestination destination) {
            return NavigationDrawerDestination(
              label: Text(destination.label),
              icon: destination.icon,
              selectedIcon: destination.selectedIcon,
            );
          }),
          const Padding(
            padding: EdgeInsets.fromLTRB(28, 16, 28, 10),
            child: Divider(),
          ),
        ],
      ),
    );
  }
}
