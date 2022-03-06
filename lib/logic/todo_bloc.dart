import 'dart:convert';

import 'package:bloc/bloc.dart';
import 'package:do_it/model/Todo.dart';
import 'package:equatable/equatable.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
part 'todo_event.dart';
part 'todo_state.dart';

class TodoBloc extends Bloc<TodoEvent, TodoState> with HydratedMixin{
  TodoBloc() : super(TodoLoading()) {
    on<TodoAdded>((event, emit) {

    });
  }

  @override
  TodoState? fromJson(Map<String, dynamic> json) {
    return TodoLoadingSuccess.fromJson(json);
  }

  @override
  Map<String, dynamic>? toJson(TodoState state) {
    if(state is TodoLoadingSuccess)
      state.toJson();
    else return null ;
  }
}
