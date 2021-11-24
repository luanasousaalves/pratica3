import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/painting.dart';
import 'package:untitled/cadastro.dart';
import 'login.dart';
import 'lista.dart';
import 'cadastro.dart';

void main() {
  runApp(MeuApp());
}

class MeuApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // debugShowCheckedModeBanner: false,
      title: "Meu Aplicativo",
      theme: ThemeData(primarySwatch: Colors.pink),
      routes: {
        '/': (context) => LoginScreen(),
        '/lista': (context) => ListaScreen(),
        '/cadastro': (context) => NovoScreen(),
      },
    );
  }
}
