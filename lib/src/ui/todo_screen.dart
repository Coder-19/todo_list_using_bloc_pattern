import 'package:flutter/material.dart';
import 'package:todo_list_using_bloc_pattern/src/blocs/new_todo_bloc.dart';
import 'package:todo_list_using_bloc_pattern/src/models/todo_model.dart';
import 'package:todo_list_using_bloc_pattern/src/resources/todo_controller.dart';
import 'package:todo_list_using_bloc_pattern/src/ui/add_task_screen.dart';

// the code below is used to create the todo screen of the app
class TODOScreen extends StatelessWidget {
  TODOScreen({Key? key}) : super(key: key);

  final TODOBloc bloc = TODOBloc();

  TODOController todoController = TODOController();

  // the code below is to use the todoBloc instance to get all the TODOs
  // todoBloc.getAllTODOS();

  @override
  Widget build(BuildContext context) {
    todoBloc.getAllTODOS();
    // todoBloc.todoModel;
    // todoBloc.getAllTODOS();
    return Scaffold(
      appBar: AppBar(
        title: const Text('TODO List'),
      ),
      body: StreamBuilder<List<TODOModel>>(
        stream: todoBloc.allTODOS,
        // stream: Stream.value(bloc.todoModel),
        // stream: Stream.value(todoController.todoList),
        builder: (context, AsyncSnapshot<List<TODOModel>> snapshot) {
          print(snapshot.data);
          if (snapshot.hasData) {
            return ListView.builder(
              itemCount: snapshot.data!.length,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text(
                    snapshot.data![index].todoTitle.toString(),
                    style: TextStyle(
                      decoration: snapshot.data![index].isDone ? TextDecoration.lineThrough : TextDecoration.none,
                    ),
                  ),
                  trailing: Checkbox(
                    value: snapshot.data![index].isDone,
                    onChanged: (value){
                      // setState(() {
                        todoBloc.doneTask(snapshot.data![index]);
                      // });
                    },
                  ),
                  onTap: (){
                    // setState(() {
                      todoBloc.removeTodo(index);
                    // });
                  },
                );
              },
            );
          } else if (snapshot.hasError) {
            return Text(snapshot.error.toString());
          }
          // } else if(snapshot.data == null){
          //   return const Center(child: Text("Enter your first task",),);
          // }
          // return const Center(child: CircularProgressIndicator());

          return Text(snapshot.error.toString());
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showModalBottomSheet(
              context: context,
              builder: (context) {
                return const AddTask();
              });
        },
        child: const Icon(
          Icons.add,
        ),
      ),
    );
  }
}
