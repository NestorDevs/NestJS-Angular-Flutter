// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'todo.controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$TodoController on _TodoControllerBase, Store {
  final _$todosAtom = Atom(name: '_TodoControllerBase.todos');

  @override
  List<Todo> get todos {
    _$todosAtom.reportRead();
    return super.todos;
  }

  @override
  set todos(List<Todo> value) {
    _$todosAtom.reportWrite(value, super.todos, () {
      super.todos = value;
    });
  }

  final _$fetchTodosAsyncAction = AsyncAction('_TodoControllerBase.fetchTodos');

  @override
  Future fetchTodos() {
    return _$fetchTodosAsyncAction.run(() => super.fetchTodos());
  }

  final _$createAsyncAction = AsyncAction('_TodoControllerBase.create');

  @override
  Future create(String description) {
    return _$createAsyncAction.run(() => super.create(description));
  }

  final _$removeAsyncAction = AsyncAction('_TodoControllerBase.remove');

  @override
  Future remove(int id) {
    return _$removeAsyncAction.run(() => super.remove(id));
  }

  final _$updateAsyncAction = AsyncAction('_TodoControllerBase.update');

  @override
  Future update(Todo todo) {
    return _$updateAsyncAction.run(() => super.update(todo));
  }

  @override
  String toString() {
    return '''
todos: ${todos}
    ''';
  }
}
