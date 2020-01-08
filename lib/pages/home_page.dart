import 'package:flutter/material.dart';

class HomePage extends StatelessWidget{
     
  @override
  Widget build(BuildContext context) {

    final estiloTexto = new TextStyle(fontSize: 25.0);
    final conteo = 10;

    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('New Title',style:estiloTexto),
        centerTitle: true
      ),
      body: Center(
          child: Column(
              mainAxisAlignment:MainAxisAlignment.center,
              children: <Widget>[
                Text('Número de clickz 1',style: estiloTexto),
                Text('$conteo',style: estiloTexto)
              ],
            ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
      floatingActionButton: FloatingActionButton(
        child:Icon(Icons.add),
        onPressed: (){

          print('Hola Mundo');
          // conteo = conteo + 1;

        },
      ),
    );
  }

}