class Todo {

  final String description;
  final String name;
  final DateTime date;
  final TodoType todoType;
  final bool isCompleted;


  @override
  String toString() {
    return 'Todo{description: $description, name: $name, date: $date, todoType: $todoType, isCompleted: $isCompleted}';
  }

  Todo( {required this.description, required this.name, required this.date, required this.todoType,required this.isCompleted});

  factory Todo.fromJson(dynamic json){
    return Todo(description: json['description'], date:  json['date'], todoType: todoCategoryValues.map![json['sad']]!, name: json['name'], isCompleted: json['isCompleted']);
  }

  Map<String,dynamic> toJson()
  {
  return {
  'description' : this.description,
  'date' : this.date,
  'todoType' : todoCategoryValues.reverse![todoType],
  'name' : this.name,
  'isCompleted' : this.isCompleted,
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



final todoCategoryValues = EnumValues(
    {
      "GYM": TodoType.GYM,
      "GOING": TodoType.GOING,
      "SPORT": TodoType.SPORT,
      "SHOPPING": TodoType.SHOPPING,
      "PARTY": TodoType.PARTY,
      "OTHER": TodoType.OTHER
    }
);




enum TodoType {
  GYM,
  GOING,
  SPORT,
  SHOPPING,
  PARTY,
  OTHER
}