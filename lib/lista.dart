import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'login.dart';

class ListaScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.home),
        actions: [
          GestureDetector(
            child: Icon(Icons.more_vert),
            onTap: () {
              Navigator.pushReplacement(context,
                  MaterialPageRoute(builder: (context) {
                return LoginScreen();
              }));
            },
          )
        ],
        title: Text("@FunMusic"),
      ),
      body: ListView.builder(
        itemCount: 10,
        itemBuilder: (ctxt, index) {
          return ListTile(
            leading: Icon(Icons.volume_up_sharp),
            title: Text("Music ${index}"),
            subtitle: Text("Favorite"),
            trailing: Icon(Icons.volunteer_activism_rounded),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
          child: Icon(Icons.add),
          onPressed: () {
            Navigator.pushNamed(context, '/cadastro');
          }),
    );
  }
}
