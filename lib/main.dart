import 'package:flutter/material.dart';

void main() {
  runApp(LicenciasApp());
} //Funcion principal

class LicenciasApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'App para Licencias',
        theme: ThemeData(
          primarySwatch: Colors.teal,
        ),
        home: PaginaInicial());
  } //Widgets
} //Clase LicenciasApp widgets sin estado

class PaginaInicial extends StatefulWidget {
  PaginaInicial({Key? key}) : super(key: key);
  @override
  _PaginaInicialState createState() => _PaginaInicialState();
} //Widgets con estado

class _PaginaInicialState extends State<PaginaInicial> {
  List<String> images = [
    "assets/images/Licencia1.jpg",
    "assets/images/Licencia2.jpg",
    "assets/images/Licencia3.jpg",
    "assets/images/Licencia4.jpg",
    "assets/images/Licencia1.jpg",
    "assets/images/Licencia2.jpg",
    "assets/images/Licencia3.jpg",
    "assets/images/Licencia4.jpg",
    "assets/images/Licencia1.jpg",
    "assets/images/Licencia2.jpg",
    "assets/images/Licencia3.jpg",
    "assets/images/Licencia4.jpg",
    "assets/images/Licencia1.jpg",
    "assets/images/Licencia2.jpg",
    "assets/images/Licencia3.jpg",
    "assets/images/Licencia4.jpg",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Tutorial GridView"),
        ),
        body: GridView.custom(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
          ),
          childrenDelegate: SliverChildBuilderDelegate(
            (BuildContext, index) {
              return Image.asset(
                images[index],
                fit: BoxFit.cover,
              );
            },
            childCount: 12,
          ),
          padding: EdgeInsets.all(10),
          shrinkWrap: true,
        ));
  }
}
