part of 'todo_bloc.dart';

abstract class TodoEvent extends Equatable {
  const TodoEvent();
}


class TodoAdded extends TodoEvent{
  final Todo todo;

  const TodoAdded({required this.todo});
  @override
  List<Object> get props => [todo];
}




class TodoCompletedToggled extends TodoEvent{
  final Todo todo;
  final bool isCompleted;

  const TodoCompletedToggled({required this.todo,required this.isCompleted});

  @override
  // TODO: implement props
  List<Object> get props => [todo,isCompleted];
}


class AllTodoCompletedToggled extends TodoEvent{
  final List<Todo> todos;

  const AllTodoCompletedToggled({required this.todos});

  @override
  // TODO: implement props
  List<Object> get props => [todos];
}
