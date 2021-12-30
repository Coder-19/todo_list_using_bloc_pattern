// the code below is used to create a class to act as the repository
import 'package:todo_list_using_bloc_pattern/src/models/todo_model.dart';
import 'package:todo_list_using_bloc_pattern/src/resources/todo_controller.dart';

class TODORepository{
  // the code below is used to create an instance of the todo controller
  final TODOController controller = TODOController();

  // the code below is used to create a method for getting all the todos
  List<TODOModel>  getAllTODOs() => controller.getTodos();

  // the code below is used to create a method to add a todo
  void add(TODOModel todoTask) => controller.addTODO(todoTask);

  // the code below is used to create a method to remove a todo
  void remove(int index) => controller.removeTODO(index);

  // the method below is used to toggle the doneness of the task
  void done(TODOModel task) => controller.updateTask(task);
}