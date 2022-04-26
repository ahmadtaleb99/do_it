part of 'todo_bloc.dart';

abstract class TodoState extends Equatable {
  const TodoState();
}

class TodoLoading extends TodoState {
  @override
  List<Object> get props => [];
}


class TodoLoadingSuccess extends TodoState {
  List<Todo> todos;
  TodoLoadingSuccess({required this.todos});

 factory TodoLoadingSuccess.fromJson(dynamic json ) {
   return TodoLoadingSuccess(todos: json.map((todo) => Todo.fromJson(todo)).toList());
  }
  
  Map<String,dynamic> toJson () {
      return Map.fromIterable(todos);
  }

  @override
  List<Object> get props => [];
}

class TodoLoadingFailed extends TodoState {
  @override
  List<Object> get props => [];
}

