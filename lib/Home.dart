import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  TextEditingController _controleCampo = TextEditingController();

  _salvar(){

  }

  _recuperar(){

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Manipulação de Dados',),backgroundColor: Colors.blue,centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Container(
            padding: EdgeInsets.all(10.0),
            child: Column(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(top: 50, bottom: 20),
                  child: Text('Texto Digitado',style: TextStyle(fontSize: 22),),
                ),
                TextField(keyboardType: TextInputType.text, decoration: InputDecoration(
                    labelText: 'Digite algo'),
                  controller: _controleCampo,),
                Padding(
                  padding: const EdgeInsets.all(50.0),
                  child: Row(
                    children: <Widget>[
                      RaisedButton(
                        onPressed: _salvar,
                        color: Colors.blue,
                        textColor: Colors.white,
                        padding: EdgeInsets.all(15),
                        child: Text('Salvar', style: TextStyle(fontSize: 20),),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: RaisedButton(
                          onPressed: _recuperar,
                          color: Colors.blue,
                          textColor: Colors.white,
                          padding: EdgeInsets.all(15),
                          child: Text('Recuperar', style: TextStyle(fontSize: 20),),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),

        ),
      ),
    );
  }
}
