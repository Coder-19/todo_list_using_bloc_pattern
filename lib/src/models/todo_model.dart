// the code below is used to create a class that contains the properties for
// showing the todo task on the screen
class TODOModel{
  // the property below is used to get the title of the todo
  String? _todoTitle;
  // the property below is used to check that whether the task is done or not
  bool? _isDone = false;

  // the code below is used to create a getter for the todoTitle
  String get todoTitle => _todoTitle!;

  // the code below is used to create a getter for isDone
  bool get isDone => _isDone!;

  // the code below is used to create a method to change the value of isDone
  void toggleDone(){
    _isDone = !_isDone!;
  }

  TODOModel(String task){
   _todoTitle = task;
  }
}