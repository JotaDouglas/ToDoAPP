// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:to_do_app/util/toDoTile.dart';

class TodoPage extends StatelessWidget {
  const TodoPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("To Do", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
        backgroundColor: Colors.blue[500],
        centerTitle: true,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Colors.blue[300],
        child: Icon(Icons.add),
        ),
      body: Container(
        decoration: BoxDecoration(color: Colors.blue[50]),
        child: ListView(
          children: [
            TodoTiles(todoText: 'Hello'),
            TodoTiles(todoText: 'oI'),
          ],
        ),
      )
    );
}}