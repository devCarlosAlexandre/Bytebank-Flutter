import 'package:flutter/material.dart';

void main() => runApp(
MaterialApp(
  home: Scaffold(
    body:Column(children: <Widget>[ 
      Card(
      child: ListTile(
        leading: Icon(Icons.monetization_on),
        title: Text('100.00'),
        subtitle:Text ("conta:2058-95"),
      ),
    ),
    Card(
      child: ListTile(
        leading: Icon(Icons.monetization_on),
        title: Text('1,250.00'),
        subtitle:Text ("conta:2058-95"),
      ),
    ),
    ],
    ),
    appBar: AppBar(
      title: Text("Transferências"),
    ),
    floatingActionButton: FloatingActionButton(
          onPressed: () {  },//é necessário passar o parâmetro para rodar
          child: Icon(Icons.add),
      ),  
  ),
));