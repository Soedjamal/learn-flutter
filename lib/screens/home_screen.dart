import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: HomePage(),
      ),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    const List<String> tasks = [
      "Belajar",
      "Belajar Lagi",
      "Lagi Belajar",
      "Lagi lagi Belajar",
      "Belajar Belajar",
    ];

    return Scaffold(
      backgroundColor: Colors.white70,
      appBar: AppBar(backgroundColor: Colors.white24, title: SanNotesTitle()),
      body: ListView.builder(
        itemBuilder: (context, index) {
          return TasksList(task: tasks[index]);
        },
        itemCount: tasks.length,
      ),
    );
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
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
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
                  color: Colors.black87,
                  fontSize: 25,
                  fontWeight: FontWeight.w900),
            ),
          ],
        ),
        ExamStateFull()
      ],
    );
  }
}

class ExamStateFull extends StatefulWidget {
  const ExamStateFull({super.key});

  @override
  State<ExamStateFull> createState() => _ExamStatefullState();
}

class _ExamStatefullState extends State<ExamStateFull> {
  int _counter = 0;
  bool _conditionalWidget = false;

  void _handleIncrement() {
    setState(() {
      _counter++;
    });
    setState(() {
      _conditionalWidget = !_conditionalWidget;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: [
          Container(
            margin: EdgeInsets.only(right: 10),
            padding: EdgeInsets.fromLTRB(10, 3, 10, 3),
            decoration: BoxDecoration(
                border: Border.all(color: Colors.black87),
                borderRadius: BorderRadius.circular(50)),
            child: Text('$_counter'),
          ),
          TextButton(
            style: TextButton.styleFrom(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5)),
                backgroundColor: Colors.blue[_conditionalWidget ? 400 : 200]),
            onPressed: _handleIncrement,
            child: Text(
              "Tambah 1",
              style:
                  TextStyle(fontWeight: FontWeight.bold, color: Colors.black87),
            ),
          )
        ],
      ),
    );
  }
}

class HorizontalListView extends StatelessWidget {
  HorizontalListView({super.key});

  final List colorCodes = [900, 800, 700, 600, 500, 400, 300, 200, 100];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemBuilder: (context, index) {
          return Container(
            color: Colors.deepPurpleAccent[colorCodes[index]],
          );
        },
        itemCount: colorCodes.length,
      ),
    );
  }
}
