import 'package:flutter/material.dart';
import 'package:untitled/column.dart';
import 'lista.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
          Image.asset("assets/logo_musica.jpg", height: 140, width: 140),
      GestureDetector(
        child: Text(
          "FunMusic",
          textAlign: TextAlign.center,
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30.0),
        ),
        onTap: () => print("Tocou no Título"),
      ),
      Padding(
        padding: EdgeInsets.symmetric(vertical: 16, horizontal: 8),
        child: TextField(
          keyboardType: TextInputType.emailAddress,
          decoration: InputDecoration(
              labelText: "E-mail", border: OutlineInputBorder()),
        ),
      ),
      Padding(
        padding: EdgeInsets.symmetric(vertical: 0, horizontal: 8),
        child: TextField(
          keyboardType: TextInputType.number,
          decoration: InputDecoration(
              labelText: "Senha", border: OutlineInputBorder()),
          obscureText: true,
        ),
      ),
      ElevatedButton(
          child: Text('ENTRAR'),
          style: ElevatedButton.styleFrom(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
            textStyle: TextStyle(fontSize: 18),
          ),
          onPressed: () {
            Navigator.pushReplacementNamed(context, '/lista');
            },
      ),
      ]
      ,
    ),);
  }
}
