import 'package:flutter/material.dart';
import 'package:primero/src/utils/my_colors.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        child: Stack(
          children: [
            Positioned(
                top: 140,
                left: 12,
                child:
                _circuloLogin(50.0,50.0,100.0)),
            Positioned(
              top: -70,
              left: -100,
              child: _circuloLogin(250.0,200.0,80.0)
            ),
            Positioned(
                top:300,
                left: 250,
                child:
                _circuloLogin(20.0,20.0,80.0)),
            Positioned(
                top:30,
                left: 250,
                child:
                _circuloLogin(20.0,20.0,100.0)),
            Positioned(
                top: -10,
                left: -20,
                child: _textLogin()
            ),
            Column(children: [
              _imagenLogo(context),
              _textUsuario(),
              _textPassword(),
              _buttonIngresar()
        ]),
          ],
        ),
      ),
    );
  }
}
Widget _circuloLogin(var ancho, var alto, var border){
  return Container(
    width: ancho,
    height: alto,
    decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(border)),
        color: MyColors.primaryColors
    ),
  );
}

Widget _textLogin(){
  return Container(
      margin: EdgeInsets.only(top: 55,left: 50),
      child: Text("SITRAM", style: TextStyle(color: Colors.white, fontSize: 30, fontWeight: FontWeight.bold),)
  );
}

Widget _imagenLogo(context){
  return Container(
    margin: EdgeInsets.only(
        top: 100,
        bottom: MediaQuery.of(context).size.height*0.15
    ),
    child: Image.asset(
      'assets/img/buo.png',
      width: 200,
      height: 200,
    ));
}
Widget _textUsuario(){
  return  Container(
    margin: EdgeInsets.symmetric(horizontal: 50, vertical: 5),
    decoration: BoxDecoration(
      color: MyColors.primaryOpacidad,
      borderRadius: BorderRadius.circular(30)
    ),
    child: TextField(decoration: InputDecoration(
        hintText: 'Ingrese su Usuario',
        border: InputBorder.none,
        contentPadding: EdgeInsets.all(15),
        prefixIcon: Icon(Icons.person, color: MyColors.primaryColorDark,),
        hintStyle: TextStyle(
          color:MyColors.primaryColorDark
        )
    ),),
  );
}
Widget _textPassword(){
  return Container(
    margin: EdgeInsets.symmetric(horizontal: 50, vertical: 5),
    decoration: BoxDecoration(
      color: MyColors.primaryOpacidad,
      borderRadius: BorderRadius.circular(30)
    ),
    child: TextField(decoration: InputDecoration(
        hintText: 'Ingrese su Contraseña',
        border: InputBorder.none,
        contentPadding: EdgeInsets.all(15),
        prefixIcon: Icon(Icons.lock, color: MyColors.primaryColorDark,),
        hintStyle: TextStyle(color:MyColors.primaryColorDark)
    ),),
  );
}
Widget _buttonIngresar(){
  final ButtonStyle style = ElevatedButton.styleFrom(
      textStyle: const TextStyle(fontSize: 20),
      shape:RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
      padding:EdgeInsets.symmetric(vertical: 20),
      primary: MyColors.primaryColors
      //primary: Colors.red,
    //  onPrimary: Colors.blue
      );
  return  Container(
      width: double.infinity,
      margin: EdgeInsets.symmetric(horizontal: 50, vertical: 30),
      child:ElevatedButton( onPressed: saludar, child: Text("Ingresar"),
  style: style));
}

saludar(){
  print("holas");
}
