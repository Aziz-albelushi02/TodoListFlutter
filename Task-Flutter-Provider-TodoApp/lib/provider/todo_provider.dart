import 'dart:math';

import 'package:flutter/material.dart';
import 'package:todo_app/models/todo.dart';

class NoteProvider extends ChangeNotifier{
  var todos = [
 Todo(id: 1, title: "first todo")
  ];

  void addTodo({required String title}) {
    todos.add(Todo(id: todos.length, title: title)
    );
    
  }
void toggleTaskStatus({required int id}){
  var todo = todos.firstWhere((element) => element.id == id);
  todo.done = !todo.done; notifyListeners();

}

}