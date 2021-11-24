import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:to_do/localization/delegate.dart';
import 'package:to_do/widgets/all_tasks_page.dart';
import 'package:to_do/widgets/network_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int value = 0;

  @override
  Widget build(BuildContext context) => _all(context);

  Widget _all(context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: Text(R.of(context).title),
      ),
      body: Column(
        children: [
          getBody(getAllTasksItem(context), const AllTasksPage()),
          getBody(getHttpTasksItem(context), NetworkPage()),
        ],
      ),
    );
  }

  GestureDetector getBody(Widget item, Widget destinationRoute) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => destinationRoute),
        );
      },
      child: Container(
        height: 100,
        padding: const EdgeInsets.only(
            left: 12,
            top: 12,
            right: 20,
            bottom: 12,
        ),
        margin: const EdgeInsets.only(
          left: 32,
          top: 48,
          right: 32,
          bottom: 0,
        ),
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(Radius.circular(16)),
        ),
        child: item,
      ),
    );
  }

  Row getAllTasksItem(context) {
    return Row(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Icon(
              Icons.all_inbox,
              size: 36,
            ),
            Text(
              R.of(context).all,
              style: const TextStyle(
                color: Colors.black54,
                fontSize: 18,
                fontWeight: FontWeight.w500,
              ),
            ),
          ],
        ),
        Text(
          '$value',
          style: const TextStyle(
            fontSize: 32,
            fontWeight: FontWeight.bold,
          ),
          textAlign: TextAlign.right,
        ),
      ],
    );
  }

  Row getHttpTasksItem(context) {
    return Row(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Icon(
              Icons.network_check,
              size: 36,
            ),
            Text(
              R.of(context).network,
              style: const TextStyle(
                color: Colors.black54,
                fontSize: 18,
                fontWeight: FontWeight.w500,
              ),
            ),
          ],
        ),
        Text(
          '$value',
          style: const TextStyle(
            fontSize: 32,
            fontWeight: FontWeight.bold,
          ),
          textAlign: TextAlign.right,
        ),
      ],
    );
  }
}
