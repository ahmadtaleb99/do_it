
import 'package:hive/hive.dart';
part 'Todo.g.dart';


@HiveType(typeId: 1)
class Todo {
  @HiveField(1)
  final String description;
  @HiveField(2)
  final String title;
  @HiveField(3)
  final DateTime date;
  @HiveField(4)
  final TodoType todoType;
  @HiveField(5)
  final bool isCompleted;

  @override
  String toString() {
    return 'Todo{description: $description, name: $title, date: $date, todoType: $todoType, isCompleted: $isCompleted}';
  }

  Todo(
      {required this.description,
      required this.title,
      required this.date,
      required this.todoType,
      required this.isCompleted});

  factory Todo.fromJson(dynamic json) {
    return Todo(
        description: json['description'],
        date: json['date'],
        todoType: todoCategoryValues.map![json['sad']]!,
        title: json['name'],
        isCompleted: json['isCompleted']);
  }

  Map<String, dynamic> toJson() {
    return {
      'description': this.description,
      'date': this.date,
      'todoType': todoCategoryValues.reverse![todoType],
      'name': this.title,
      'isCompleted': this.isCompleted,
    };
  }
}

// class TodoType {
//  final String typeName;
//
//
//
//   TodoType(this.typeName);
//
//  factory TodoType.fromJson(dynamic json) {
//     return TodoType(json['typeName']);
//   }
//
//  Map<String,dynamic> toJson() => {'typeName' : this.typeName};
// }

class EnumValues<T> {
  Map<String, T>? map;
  Map<T, String>? reverseMap;

  EnumValues(this.map);

  Map<T, String>? get reverse {
    if (reverseMap == null) {
      reverseMap = map!.map((k, v) => new MapEntry(v, k));
    }
    return reverseMap;
  }
}

final todoCategoryValues = EnumValues({
  "GYM": TodoType.GYM,
  "GOING": TodoType.GOING,
  "SPORT": TodoType.SPORT,
  "SHOPPING": TodoType.SHOPPING,
  "PARTY": TodoType.PARTY,
  "OTHER": TodoType.OTHER
});
@HiveType(typeId: 2)

enum TodoType {
@HiveField(1)
  GYM,
@HiveField(2)
  GOING,
@HiveField(3)
  SPORT,
@HiveField(4)
SHOPPING,
@HiveField(5)
  PARTY,
@HiveField(6)
  OTHER }

