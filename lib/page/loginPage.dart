// ignore_for_file: prefer_const_constructors, unrelated_type_equality_checks

import 'package:flutter/material.dart';
import 'package:to_do_app/page/homePage.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool setValor = true;
  TextEditingController userController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  void checkLogin(){
    String userCheck = userController.text;
    String passwordCheck = passwordController.text;

    if(userCheck == "joao" && passwordCheck == "1234"){
      Navigator.push(context, MaterialPageRoute(builder: (context) => HomePage()));
    }else{
      print("Error Login");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SizedBox(
      height: double.infinity,
      width: double.infinity,
      child: Center(
        child: Padding(
          padding: EdgeInsets.all(15.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset('assets/logo.jpg', height: 240, width: double.infinity,),
              TextField(
                  controller: userController,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(), labelText: "User Name (joao)")),
              SizedBox(height: 10),
              TextField(
                  controller: passwordController,
                  decoration: InputDecoration(border: OutlineInputBorder(), labelText: "Password (1234)"),
                  obscureText: true),
              SizedBox(height: 15),
              Row(
                children: [
                  Expanded(
                    child: ElevatedButton(
                        onPressed: checkLogin,
                        style: ElevatedButton.styleFrom(
                            foregroundColor: Colors.white,
                            backgroundColor:
                                Colors.blue, // Cor do texto do botão
                            padding: EdgeInsets.all(
                                16.0), // Preenchimento interno do botão
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(
                                  8.0), // Borda arredondada
                            )),
                        child: Text("Go!")),
                  ),
                ],
              ),

              // Change Password
              TextButton(onPressed: (){}, child: Text("forgot your Password? Click here."))
            ],
          ),
        ),
      ),
    ));
  }
}
