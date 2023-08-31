import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: PageView(
            scrollDirection: Axis.vertical,
            children: <Widget>[_pagina1(), _pagina2()]));
  }
}

Widget _pagina1() {
  return Stack(children: <Widget>[_colorFondo(), _imagenFondo(), _texto()]);
}

Widget _pagina2() {
  return Stack(children: <Widget>[_colorFondo(), _botonCentro()]);
}

Widget _botonCentro() {
  return Center(
      child: TextButton(
    child: Text('Enviar'),
    onPressed: () {
      print("holas");
    },
  ));
}

Widget _texto() {
  final estiloTitulo = TextStyle(color: Colors.pink, fontSize: 56);
  return SafeArea(
    child: Column(
      children: [
        Text(
          "11°",
          style: estiloTitulo,
        ),
        Text("Para cuando",
          style: estiloTitulo,
        ),
        Text("las pcs", style: estiloTitulo,),
        Expanded(child: Container()),
        Icon(
          Icons.keyboard_arrow_down,
          size: 70,
          color: Colors.white,
        )
      ],
    ),
  );
}

Widget _colorFondo() {
  return Container(
    width: double.infinity,
    height: double.infinity,
    color: Color.fromRGBO(108, 192, 218, 0.5),
  );
}

Widget _imagenFondo() {
  return Container(
    width: double.infinity,
    height: double.infinity,
    child:
        Image(image: AssetImage('assets/imagenes-para-fondo-de-pantalla.jpg')),
  );
}
