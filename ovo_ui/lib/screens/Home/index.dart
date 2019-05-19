import 'package:flutter/material.dart';
import 'main_content.dart';
import 'main_option.dart';

class Home extends StatefulWidget {
  const Home({Key key}) : super(key: key);
  @override
  _Home createState() => _Home();
}

class _Home extends State<Home> with SingleTickerProviderStateMixin {
  final List<Tab> myTabs = <Tab>[
    Tab(
      icon: Icon(Icons.home),
      text: "Home",
    ),
    Tab(
      icon: Icon(Icons.shopping_basket),
      text: "Deals",
    ),
    Tab(
      icon: Icon(Icons.attach_money),
      text: "Finance",
    ),
    Tab(
      icon: Icon(Icons.account_balance_wallet),
      text: "Wallet",
    ),
    Tab(
      icon: Icon(Icons.insert_chart),
      text: "History",
    ),
  ];

  final List<Widget> actionButtons = <Widget>[
    IconButton(
      icon: Icon(Icons.notifications_none),
      tooltip: "Notifications",
      color: Colors.white,
      onPressed: () {},
    ),
    IconButton(
      icon: Icon(Icons.settings),
      tooltip: "Settings",
      color: Colors.white,
      onPressed: () {},
    ),
  ];

  TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(vsync: this, length: myTabs.length);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.deepPurple,
          elevation: 0.0,
          title: Text("OVO"),
          actions: actionButtons,
          bottom: TabBar(
            controller: _tabController,
            tabs: myTabs,
            indicatorColor: Colors.transparent,
            labelStyle: TextStyle(
              fontSize: 11.0,
              fontWeight: FontWeight.w400,
            ),
            unselectedLabelColor: Colors.white30,
          ),
        ),
        body: Stack(
          fit: StackFit.expand,
          children: <Widget>[
            MainContent(),
            MainOption(),
          ],
        ));
  }
}
