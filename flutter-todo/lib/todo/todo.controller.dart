import 'package:mobx/mobx.dart';
import 'package:todo/todo/todo.service.dart';

import 'todo.model.dart';

part 'todo.controller.g.dart';

class TodoController = _TodoControllerBase with _$TodoController;

abstract class _TodoControllerBase with Store {
  @observable
  List<Todo> todos = [];

  @action
  fetchTodos() async {
    todos = await TodoService().listAll();
  }

  @action
  create(String description) async {
    await TodoService().create(description);
    fetchTodos();
  }

  @action
  remove(int id) async {
    await TodoService().remove(id);
    fetchTodos();
  }

  @action
  update(Todo todo) async {
    await TodoService().update(todo);
    fetchTodos();
  }
}
