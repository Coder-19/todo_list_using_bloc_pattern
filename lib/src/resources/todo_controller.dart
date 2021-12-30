// the code below is used to create a controller class
import 'package:todo_list_using_bloc_pattern/src/models/todo_model.dart';

class TODOController {

  TODOController(){
    // todoList = [
    //   TODOModel("Task1"),
    //   TODOModel("Task2"),
    //   TODOModel("Task3"),
    //   TODOModel("Task4"),
    // ];
  }

  // the code below is used to create a list of TODOModel
  List<TODOModel> todoList = [
    TODOModel("Task1"),
    TODOModel("Task2"),
    TODOModel("Task3"),
    TODOModel("Task4"),
  ];

  // the code below is used to create a method to add the todo to the list
  void addTODO(TODOModel task) {
    todoList.add(task);
  }

  // the code below is used to create a method to remove the todo
  void removeTODO(int index) {
    todoList.removeAt(index);
  }

  // the code below is used to create a method to get all the todo from the todo list
  List<TODOModel> getTodos()  {
    return todoList;
  }

  void updateTask(TODOModel task) {
    task.toggleDone();
  }
}
