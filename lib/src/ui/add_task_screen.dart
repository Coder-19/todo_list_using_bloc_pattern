import 'package:flutter/material.dart';
import 'package:todo_list_using_bloc_pattern/src/blocs/new_todo_bloc.dart';
import 'package:todo_list_using_bloc_pattern/src/blocs/todo_bloc.dart';
import 'package:todo_list_using_bloc_pattern/src/models/todo_model.dart';

class AddTask extends StatefulWidget {
  const AddTask({Key? key}) : super(key: key);

  @override
  _AddTaskState createState() => _AddTaskState();
}

class _AddTaskState extends State<AddTask> {

  String? taskName;
  @override
  Widget build(BuildContext context) {
    return  Column(
      children: <Widget>[
        const SizedBox(
          height: 10.0,
        ),
        TextField(
          decoration: const InputDecoration(
            hintText: "Enter Task",
          ),
          onChanged: (value){
            setState(() {
              taskName = value;
            });
          },
        ),
        const SizedBox(
          height: 25.0,
        ),
        MaterialButton(
            child: Container(
              width: 200.0,
              height: 50.0,
              color: Colors.deepPurpleAccent,
              child: const Center(
                child: Text(
                  "Add",
                ),
              ),
            ),
            onPressed: (){
              // setState(() {
                todoBloc.addTODO(TODOModel(taskName!));
              // });

              Navigator.pop(context);
            }),
      ],
    );
  }
}
