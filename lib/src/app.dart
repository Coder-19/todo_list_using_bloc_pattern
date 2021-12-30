import 'package:flutter/material.dart';
import 'package:todo_list_using_bloc_pattern/src/ui/todo_screen.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(),
      home: TODOScreen(),
    );
  }
}
