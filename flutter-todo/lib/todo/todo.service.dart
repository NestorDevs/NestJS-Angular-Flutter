import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:todo/todo/todo.model.dart';

class TodoService {
  String url = 'http://192.168.43.4:3000/todo';

  Future<List<Todo>> listAll() async {
    http.Response response = await http.get(url);
    if (response.statusCode == 200 || response.statusCode == 201) {
      Iterable list = json.decode(response.body);
      return list.map((i) => Todo.fromJson(i)).toList();
    }
    return null;
  }

  Future<bool> create(String description) async {
    http.Response response =
        await http.post(url, body: {'description': description});
    return (response.statusCode == 200 || response.statusCode == 201);
  }

  Future<bool> remove(int id) async {
    http.Response response = await http.delete('${url}/${id}');
    return (response.statusCode == 200 || response.statusCode == 201);
  }

  Future<bool> update(Todo _todo) async {
    http.Response response = await http.put('${url}', body: {
      'id': _todo.id.toString(),
      'description': _todo.description,
      'done': _todo.done.toString()
    });
    return (response.statusCode == 200 || response.statusCode == 201);
  }
}
