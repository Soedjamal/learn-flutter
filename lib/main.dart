import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    const List<String> tasks = ["Muakan", "Muandi", "Muwani"];

    return Scaffold(
        backgroundColor: Colors.white70,
        appBar: AppBar(backgroundColor: Colors.white24, title: SanNotesTitle()),
        body: ListView(
            children: tasks.map((task) {
          return TasksList(task: task);
        }).toList()));
  }
}

class TasksList extends StatelessWidget {
  final String task;

  const TasksList({required this.task, super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.fromLTRB(20, 10, 20, 0),
        padding: EdgeInsets.fromLTRB(20, 10, 20, 10),
        decoration: BoxDecoration(
          border: Border.all(
              color: Colors.black87, style: BorderStyle.solid, width: 2),
          borderRadius: BorderRadius.circular(5),
          color: const Color.fromARGB(255, 199, 220, 255),
        ),
        width: double.infinity,
        child:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          Row(children: [
            // Text('${}', style: TextStyle(fontWeight: FontWeight.bold)),
            Text(task, style: TextStyle(fontWeight: FontWeight.bold)),
          ]),
          Row(
            spacing: 10,
            children: [
              TextButton(
                onPressed: () {
                  // Your action here
                },
                child: Text('Edit'),
                style: TextButton.styleFrom(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5)),
                  foregroundColor: Colors.white,
                  backgroundColor: const Color.fromARGB(221, 1, 61, 94),
                  textStyle: TextStyle(
                    fontSize: 10,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              TextButton(
                onPressed: () {
                  // Your action here
                },
                child: Text('Delete'),
                style: TextButton.styleFrom(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5)),
                  foregroundColor: Colors.white,
                  backgroundColor: const Color.fromARGB(221, 131, 27, 27),
                  textStyle: TextStyle(
                    fontSize: 10,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              )
            ],
          )
        ]));
  }
}

class SanNotesTitle extends StatelessWidget {
  const SanNotesTitle({super.key});

  @override
  Widget build(BuildContext context) {
    const String firstAppTitle = "san";
    const String secondAppTitle = "notes";
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Container(
            margin: EdgeInsets.only(left: 10),
            child: Text(
              firstAppTitle,
              style: TextStyle(
                  color: Colors.deepPurpleAccent[200],
                  fontSize: 25,
                  fontWeight: FontWeight.w900),
            )),
        Text(
          secondAppTitle,
          style: TextStyle(
              color: Colors.black87, fontSize: 25, fontWeight: FontWeight.w900),
        ),
      ],
    );
  }
}
