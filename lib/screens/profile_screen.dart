import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: ProfileContent());
  }
}

class ProfileContent extends StatelessWidget {
  ProfileContent({super.key});

  final List<String> profileStats = ["199", "132", "78"];

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
            margin: EdgeInsets.fromLTRB(80, 80, 80, 30),
            width: 400,
            // height: 200,
            // decoration:
            // BoxDecoration(border: Border.all(color: Colors.black87)),
            padding: EdgeInsets.only(top: 50),
            child: Column(
              children: [
                Container(
                  width: 80,
                  height: 80,
                  margin: EdgeInsets.only(bottom: 20),
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.black87, width: 2),
                      borderRadius: BorderRadius.circular(10)),
                ),
                Text(
                  "@SanNotes",
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ),
              ],
            )),
        Container(
          width: 300,
          height: 50,
          // decoration: BoxDecoration(border: Border.all(color: Colors.black54)),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: profileStats.map((stat) {
              return Container(
                width: 50,
                height: 50,
                alignment: Alignment(0, 0),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.black54, width: 2),
                  borderRadius: BorderRadius.circular(5),
                  color: Colors.black12,
                ),
                child: Text(
                  stat,
                  style: TextStyle(fontSize: 16),
                ),
              );
            }).toList(),
          ),
        )
      ],
    );
  }
}
