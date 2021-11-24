import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:to_do/localization/delegate.dart';
import 'package:to_do/network/model/to_do_model.dart';
import 'package:to_do/widgets/my_title.dart';

import 'list_item.dart';

class AllTasksPage extends StatefulWidget {
  const AllTasksPage({Key? key}) : super(key: key);

  @override
  State<AllTasksPage> createState() => _AllTasksPageState();
}

class _AllTasksPageState extends State<AllTasksPage> {
  int value = 0;

  _addItem() {
    setState(() {
      value += 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(R.of(context).title),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.all(16),
            child: MyTitle(),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 16, right: 16),
            child: _TasksTitle(),
          ),
          _tasks,
        ],
      ),
      floatingActionButton: FloatingActionButton(
        elevation: 10,
        splashColor: Colors.amberAccent,
        child: const Icon(Icons.add),
        onPressed: _addItem(),
      ),
    );
  }

  get _tasks => Expanded(
        child: ListView.builder(
          itemCount: value,
          padding: const EdgeInsets.all(16),
          physics: const BouncingScrollPhysics(),
          scrollDirection: Axis.vertical,
          shrinkWrap: true,
          itemBuilder: (context, index) => _buildItem(),
        ),
      );

  _buildItem() => ListItem(task: ToDoModel.defaultValue());
}

class _TasksTitle extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Text(
        R.of(context).tasks,
        style: const TextStyle(
          color: Colors.blue,
          fontSize: 25,
          fontWeight: FontWeight.w500,
        ),
      );
}
