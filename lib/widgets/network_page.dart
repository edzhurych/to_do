import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:to_do/localization/delegate.dart';
import 'package:to_do/network/model/to_do_model.dart';
import 'package:to_do/network/network_api.dart';

import 'list_item.dart';

class NetworkPage extends StatelessWidget {
  final networkApi = NetworkApi();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(R.of(context).network),
      ),
      body: FutureBuilder(
        future: networkApi.fetchToDos(),
        builder:
            (BuildContext context, AsyncSnapshot<List<ToDoModel>> snapshot) {
          if (snapshot.hasData) {
            List<ToDoModel>? toDosList = snapshot.data;

            return ListView(
              children: toDosList!
                  .map((ToDoModel toDo) => ListItem(task: toDo))
                  .toList(),
            );
          } else {
            return const Center(child: CircularProgressIndicator());
          }
        },
      ),
    );
  }
}
