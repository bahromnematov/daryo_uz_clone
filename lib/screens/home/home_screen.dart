import 'package:daryo_app_clone/screens/drawer/drawer.dart';
import 'package:daryo_app_clone/screens/home/home_content.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: buildAppBar(),
        body: const TabBarView(
          children: [
            HomeContent(),
            Text('News'),
            Text('News'),
          ],
        ),
        drawer: MyDrawer(),
      ),
    );
  }
}

AppBar buildAppBar() {
  return AppBar(
    title: const Text('Daryo'),
    bottom: const TabBar(
      isScrollable: true,
      tabs: [
        Tab(
          child: const Text('SO\'NGI YANGILIKLAR'),
        ),
        Tab(
          child: const Text('ASOSIY YANGILIKLAR'),
        ),
        Tab(
          child: const Text('BOSHQA'),
        ),
      ],
    ),
  );
}
