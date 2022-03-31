import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
      home: Scaffold(
        body: ListaTransferencias(),
        appBar: AppBar(
          title: Text("Transferências"),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {}, //é necessário passar o parâmetro para rodar
          child: Icon(Icons.add),
        ),
      ),
    ));

class ListaTransferencias extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        ItemTransfeerncia(Transferencia(100.0, 154)),
        ItemTransfeerncia(Transferencia(1050.90 , 0123)),
        ItemTransfeerncia(Transferencia(158.59, 508)),
        ItemTransfeerncia(Transferencia(230.00, 1974)),
      ],
    );
  }
}

class ItemTransfeerncia extends StatelessWidget {
  final Transferencia transferencia;
  ItemTransfeerncia(this.transferencia,);
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

class Transferencia{
  final double valor;
  final int numeroConta;
  Transferencia(this.valor, this.numeroConta);
}