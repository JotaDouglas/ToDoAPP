// ignore_for_file: avoid_unnecessary_containers

import 'package:flutter/material.dart';

class TodoTiles extends StatefulWidget {
  final String todoText;

  const TodoTiles({super.key, required this.todoText});

  @override
  State<TodoTiles> createState() => _TodoTilesState();
}

class _TodoTilesState extends State<TodoTiles> {
  bool checkTask = false;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 8, right: 9, top: 6,),
      child: Container(
        height: 50,
        width: double.infinity,
        color: Colors.blue[200],
        child: Row(
          children: [
            Checkbox(
              activeColor: Colors.blue,
              value: checkTask, 
              onChanged: (bool?checking){
                setState(() {
                  checkTask = checking!;
                }
                );
            }),
            Text(widget.todoText)
          ],
        ),
      ),
    );
  }
}