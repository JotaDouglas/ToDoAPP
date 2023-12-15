// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:to_do_app/page/loginPage.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Home Page", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
        backgroundColor: Colors.blue[500],
        centerTitle: true,
        iconTheme: IconThemeData(color: Colors.white),
        actions: [IconButton(
          onPressed: () { 
              Navigator.push(context, 
                MaterialPageRoute(
                  builder: (context) => LoginPage()));
                  }, icon: Icon(Icons.logout))],
      ),
      drawer: Drawer(
        elevation: 0,
        backgroundColor: Colors.white,
        child: Column(
          children: [
            DrawerHeader(child: Icon(Icons.favorite, size: 50), ),
            ListTile(
              leading: Icon(Icons.settings), 
              title: Text("Settings"), 
              onTap: () { 
                Navigator.push(
                  context, 
                  MaterialPageRoute(
                    builder: (context) => LoginPage()));
                    },)
            
          ],
        ),
      ),
      body: const SizedBox(
        height: double.infinity,
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Hello User! \n Conglatuations", 
            style: TextStyle(
              color: Colors.black, 
              fontWeight: FontWeight.bold, 
              fontSize: 30), 
              textAlign: TextAlign.center,),
          ],
        ),
      ),
    );
  }
}