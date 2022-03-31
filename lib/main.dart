import 'package:flutter/material.dart';

void main() => runApp(Bytebankapp());

class Bytebankapp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: FormularioTransferencia(),
      ),
    );
  }
}

class ListaTransferencias extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Transferências"),
      ),
      body: Column(
        children: <Widget>[
          ItemTransfeerncia(Transferencia(100.0, 154)),
          ItemTransfeerncia(Transferencia(1050.90, 0123)),
          ItemTransfeerncia(Transferencia(158.59, 508)),
          ItemTransfeerncia(Transferencia(230.00, 1974)),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.add),
      ),
    );
  }
}

class ItemTransfeerncia extends StatelessWidget {
  final Transferencia transferencia;
  ItemTransfeerncia(
    this.transferencia,
  );
  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        leading: Icon(Icons.monetization_on),
        title: Text(transferencia.valor.toString()),
        subtitle: Text(transferencia.numeroConta.toString()),
      ),
    );
  }
}

class Transferencia {
  final double valor;
  final int numeroConta;
  Transferencia(this.valor, this.numeroConta);
}

class FormularioTransferencia extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
  return Scaffold (
    appBar: AppBar(title: Text('Criando Transferências'),),
    body:Text('Olá Seja Bem Vindo!')
  );
  }
}
