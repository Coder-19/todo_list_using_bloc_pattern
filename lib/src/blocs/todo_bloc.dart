// // the code below is used to create a class to act as a todo bloc
// import 'package:rxdart/rxdart.dart';
// import 'package:todo_list_using_bloc_pattern/src/models/todo_model.dart';
// import 'package:todo_list_using_bloc_pattern/src/resources/todo_repository.dart';
//
// class TODOBloc{
//   // the code below is used to create an instance of the todo repository
//   final TODORepository repository = TODORepository();
//
//   // the code below is used to create an instance of publish subject
//   final PublishSubject<List<TODOModel>> _todoFetcher = PublishSubject<List<TODOModel>>();
//
//   // the code below is used to create a getter of Stream<TODOModel> type
//   // for getting the stream from PublishSubject<TODOModel>
//   Stream<List<TODOModel>> get allTODOS => _todoFetcher.stream;
//
//
//   // the code below is used to create a method for getting all the todos
//   getAllTODOS()  {
//     print("Test");
//     List<TODOModel> todoModel = repository.getAllTODOs();
//     print(todoModel.length);
//     print(todoModel);
//     _todoFetcher.sink.add(todoModel);
//   }
//
//   // the code below is used to create a method for adding a todo
//   addTODO(TODOModel ttask) {
//     repository.add(ttask);
//     List<TODOModel> todoModel = repository.getAllTODOs();
//     _todoFetcher.sink.add(todoModel);
//   }
//
//   // the code below is used to create a method to remove the todo
//   removeTodo(int index){
//     repository.remove(index);
//     List<TODOModel> todoModel = repository.getAllTODOs();
//     _todoFetcher.sink.add(todoModel);
//   }
//
//   // the code below is used to create a method to toggle the doneness of the task
//   doneTask(TODOModel task){
//     repository.done(task);
//     List<TODOModel> todoModel = repository.getAllTODOs();
//     _todoFetcher.sink.add(todoModel);
//   }
//
//   // the code below is used to dispose the todoFetcher stream
//   dispose(){
//     _todoFetcher.close();
//   }
// }
//
// // the code below is used to create an instance of the TODOBloc
// final todoBloc = TODOBloc();