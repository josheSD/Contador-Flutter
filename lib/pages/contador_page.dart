import 'package:flutter/material.dart';

class ContadorPage extends StatefulWidget{

  @override
  _ContadorPageState createState() => _ContadorPageState();
  

}

class _ContadorPageState extends State<ContadorPage>{
  
  final _estiloTexto = new TextStyle(fontSize: 25.0);
  int _conteo = 0;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('Stateful Title',style:_estiloTexto),
        centerTitle: true
      ),
      body: Center(
          child: Column(
              mainAxisAlignment:MainAxisAlignment.center,
              children: <Widget>[
                Text('Número de taps',style: _estiloTexto),
                Text('$_conteo',style: _estiloTexto)
              ],
            ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
      floatingActionButton: _crearBotones()
    );
  }

  Widget _crearBotones(){
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: <Widget>[
        SizedBox(width:30),
        FloatingActionButton(child:Icon(Icons.exposure_zero),onPressed: _reset),
        Expanded(child:SizedBox()),
        FloatingActionButton(child:Icon(Icons.remove),onPressed: _sustrear),
        SizedBox(width:5.0),
        FloatingActionButton(child:Icon(Icons.add),onPressed: _agregar)
      ]
    );
  }

  void _agregar(){
    setState(() => _conteo++);
  }

  void _sustrear(){
    setState(() => _conteo--);
  }

  void _reset(){
    setState(() => _conteo = 0);
  }

}

