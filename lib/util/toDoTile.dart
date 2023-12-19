// ignore_for_file: avoid_unnecessary_containers

import 'package:flutter/material.dart';

class TodoTiles extends StatelessWidget {
  final String todoText;

  const TodoTiles({super.key, required this.todoText});
  

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
            Text(todoText),
          ],
        ),
      ),
    );
  }
}