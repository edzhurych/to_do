import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:to_do/localization/delegate.dart';
import 'package:to_do/widgets/tabs/player_tab.dart';
import 'package:to_do/widgets/tabs/web_tab.dart';
import 'package:to_do/widgets/tabs/map_tab.dart';

class TabsHomePage extends StatelessWidget {
  const TabsHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        backgroundColor: Colors.grey[200],
        appBar: AppBar(
          title: Text(R.of(context).title),
          bottom: const TabBar(
            tabs: [
              Tab(icon: Icon(Icons.web)),
              Tab(icon: Icon(Icons.directions_transit)),
              Tab(icon: Icon(Icons.directions_bike)),
            ],
          ),
        ),
        body: const TabBarView(
          children: [
            WebTab(),
            MapTab(),
            PlayerTab(),
          ],
        ),
      ),
    );
  }
}
