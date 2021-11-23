const _userIdKey = "userId";
const _idKey = "id";
const _titleKey = "title";
const _completedKey = "completed";

class ToDoModel {
  final int userId;
  final int id;
  final String title;
  final bool completed;

  ToDoModel({
    required this.userId,
    required this.id,
    required this.title,
    required this.completed,
  });

  ToDoModel.fromJson(Map<String, dynamic> json)
      : userId = json[_userIdKey],
        id = json[_idKey],
        title = json[_titleKey],
        completed = json[_completedKey];

  factory ToDoModel.defaultValue() {
    return ToDoModel(
      userId: 1,
      id: 1,
      title: 'Default task',
      completed: false,
    );
  }
}
