import 'package:flutter/material.dart';


class Interacao extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return InteracaoState();
  }
}

class InteracaoState extends State<Interacao> {
  final TextEditingController _controladorCampomensagem =
      TextEditingController();
 final List<String> entries = <String>['A', 'B', 'C'];
 final List<int> colorCodes = <int>[600, 500, 100];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Interações com a Requisição'),
        ),
         body: 
        


ListView.builder(
  padding: const EdgeInsets.all(8),
  itemCount: entries.length,
  itemBuilder: (BuildContext context, int index) {
   String item = entries[index];
   if (item == 'A' ){
     return Container(
      height: 50,
      color: Colors.green,
      child: Center(child: Text('Entry ${entries[index]}')),
    );
   }
    return Container(
      height: 50,
      color: Colors.amber[colorCodes[index]],
      child: Center(child: Text('Entry ${entries[index]}')),
    );


  }
)
    );
  }

 
}
