import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class ContadorPage extends StatefulWidget {
  @override
  createState() => _ContadorPageState();
}

class _ContadorPageState extends State<ContadorPage> {
  final _estiloTexto = new TextStyle();
  int _conteo = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Titulo'),
        centerTitle: true,
      ),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text('Numero de taps: ', style: _estiloTexto),
          Text('$_conteo', style: _estiloTexto),
        ],
      )),
      floatingActionButton: _crearBotones(),
    );
  }

  _crearBotones() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: <Widget>[
        SizedBox(width: 35.0),
        FloatingActionButton(
          child: Icon(Icons.refresh),
          onPressed: _reset
        ),
        Expanded(child: SizedBox(width: 10.0)),
        FloatingActionButton(
          child: Icon(Icons.remove),
          onPressed: _restar
        ),
        Expanded(child: SizedBox(width: 10.0)),
        FloatingActionButton(
          child: Icon(Icons.add),
          onPressed: _sumar
        ),
      ],
    );
  }

  void _sumar() {
    setState(() => _conteo++);
  }
  void _restar() {
    setState(() => _conteo--);
  }
  void _reset() {
    setState(() => _conteo = 0);
  }
}
