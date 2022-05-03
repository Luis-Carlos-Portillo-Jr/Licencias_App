import 'package:flutter/material.dart';
import 'package:portillo/galeriadelicencias.dart';

void main() {
  runApp(LicenciasApp());
} //Funcion principal

class LicenciasApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'App para Licencias Version 2',
        theme: ThemeData(
          primarySwatch: Colors.teal,
        ),
        home: PaginaInicial());
  } //Widgets
} //Clase LicenciasApp widgets sin estado
