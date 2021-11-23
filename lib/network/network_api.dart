import 'dart:convert';

import 'package:to_do/network/model/to_do_model.dart';
import 'package:http/http.dart' as http;

const _toDosUrl = "https://jsonplaceholder.typicode.com/todos";

class NetworkApi {
  Future<List<ToDoModel>> fetchToDos() async {
    final response = await http.get(Uri.parse(_toDosUrl));

    if (response.statusCode == 200) {
      List<dynamic> body = jsonDecode(response.body);

      List<ToDoModel> toDosList =
          body.map((dynamic item) => ToDoModel.fromJson(item)).toList();

      return toDosList;
    } else {
      throw "Can't get toDos.";
    }
  }
}
