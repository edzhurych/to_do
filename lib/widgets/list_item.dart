import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:to_do/network/model/to_do_model.dart';
import 'package:to_do/widgets/to_do_detail_page.dart';

class ListItem extends StatefulWidget {
  final ToDoModel task;

  const ListItem({Key? key, required this.task}) : super(key: key);

  @override
  State<StatefulWidget> createState() => ListItemState();
}

class ListItemState extends State<ListItem> {
  late bool isChecked;

  @override
  void initState() {
    isChecked = widget.task.completed;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: () => Navigator.of(context).push(
        MaterialPageRoute(
          builder: (context) => ToDoDetailPage(
            toDo: widget.task,
          ),
        ),
      ),
      contentPadding: const EdgeInsets.all(2),
      leading: Checkbox(
        checkColor: Colors.white,
        value: isChecked,
        onChanged: (bool? value) {
          setState(() => isChecked = value!);
        },
      ),
      title: Text(widget.task.title),
    );
  }
}
