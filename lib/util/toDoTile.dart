// ignore_for_file: avoid_unnecessary_containers, prefer_const_constructors

import 'package:flutter/material.dart';

class TodoTiles extends StatefulWidget {
  final String todoText;

  const TodoTiles({super.key, required this.todoText});

  @override
  State<TodoTiles> createState() => _TodoTilesState();
}

class _TodoTilesState extends State<TodoTiles> {
  bool checkTask = false;

  void taskConclude(){
    if(checkTask = false){
      setState(() {
        
      });
    }else{}
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 8, right: 9, top: 6,),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(10)),
          color:checkTask?Colors.blue[500]:Colors.blue[200],
        ),
        height: 60,
        width: double.infinity,        
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
            Text(widget.todoText, 
            style: TextStyle(
              decoration: checkTask?TextDecoration.lineThrough:TextDecoration.none,
              fontSize: 22,
              fontWeight: FontWeight.bold),
              
              )
          ],
        ),
      ),
    );
  }
}