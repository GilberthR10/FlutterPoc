import 'package:flutter/material.dart';

class CounterPage extends StatefulWidget {
  @override
  createState() {
    // TODO: implement createState
    return _CounterPageState();
  }
}

class _CounterPageState extends State<CounterPage> {
  final estiloTexto = new TextStyle(fontSize: 30);
  int _conteo = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('App tap counter'),
          centerTitle: true,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text('Numero de taps', style: estiloTexto),
              Text('$_conteo', style: estiloTexto),
              Image.asset('assets/images/ok.png')
            ],
          ),
        ),
        floatingActionButton: _createButtons());
  }

  Widget _createButtons() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        FloatingActionButton(
          child: Icon(Icons.exposure_plus_1),
          onPressed: () {
            _conteo++;
            setState(() {});
          },
        ),
        SizedBox(
          width: 10.0,
        ),
        FloatingActionButton(
          child: Icon(Icons.exposure_neg_1),
          onPressed: () {
            if (_conteo == 0) {
              return null;
            }
            _conteo--;
            setState(() {});
          },
        ),
        SizedBox(
          width: 10.0,
        ),
        FloatingActionButton(
          child: Icon(Icons.exposure_zero),
          onPressed: () {
            _conteo = 0;
            setState(() {});
          },
        ),
      ],
    );
  }
}
