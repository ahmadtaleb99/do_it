class Todo {

  final String description;
  final String name;
  final DateTime date;
  final TodoType todoType;
  final bool isCompleted;


  Todo( {required this.description, required this.name, required this.date, required this.todoType,required this.isCompleted});

  factory Todo.fromJson(dynamic json){
    return Todo(description: json['description'], date:  json['date'], todoType:  TodoType.fromJson(json['todoType']), name: json['name'], isCompleted: json['isCompleted']);
  }

  Map<String,dynamic> toJson()
  {
  return {
  'description' : this.description,
  'date' : this.date,
  'todoType' : this.todoType.toJson(),
  'name' : this.name,
  'isCompleted' : this.isCompleted,
  };
}
}

class TodoType {
 final String typeName;



  TodoType(this.typeName);

 factory TodoType.fromJson(dynamic json) {
    return TodoType(json['typeName']);
  }

 Map<String,dynamic> toJson() => {'typeName' : this.typeName};
}