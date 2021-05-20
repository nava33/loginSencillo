import 'package:flutter/material.dart';

void main() => runApp(MiLoginApp());

class MiLoginApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'AppMaster Nava',
      theme: ThemeData(
        brightness: Brightness.light,
        primarySwatch: Colors.deepOrange,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      darkTheme: ThemeData(
        brightness: Brightness.dark,
        primarySwatch: Colors.orange,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: IngresoSistema(),
    ); //fin material app
  } // fin de widget
} // // fin de class MiLoginApp

class IngresoSistema extends StatefulWidget {
  @override
  _IngresoSistemaState createState() => _IngresoSistemaState();
} // fin  class IngresoSistema

class _IngresoSistemaState extends State<IngresoSistema> {
  bool acceso = false;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(
            Icons.menu,
            semanticLabel: 'menu',
          ),
          onPressed: () {
            print('Menu button');
          },
        ),
        actions: <Widget>[
          IconButton(
            icon: Icon(
              Icons.search,
              semanticLabel: 'search',
            ),
            onPressed: () {
              print('Search button');
            },
          ),
          IconButton(
            icon: Icon(
              Icons.tune,
              semanticLabel: 'filter',
            ),
            onPressed: () {
              print('Filter button');
            },
          ),
        ], // fin accion widget []
        title: Text('Ingreso al Sistema'),
      ), //fin de appbar
      body: SafeArea(
        child: ListView(
          padding: EdgeInsets.symmetric(horizontal: 24.0),
          children: <Widget>[
            SizedBox(height: 80.0),
            Column(
              children: <Widget>[
                Image.asset('assets/diamond.png'),
                SizedBox(height: 16.0),
              ],
            ),
            if (!acceso)
              
                Column(children: <Widget>[
                  TextField(
                    decoration: InputDecoration(
                      filled: true,
                      // fillColor: Colors.amber,
                      labelText: 'Username',
                    ),
                  ),
                ] // fin de widget []

                    ) //fin clumna
               // if verdadero
            else
               // if falso
          ], // fin de widgets
        ), //fin de lisView
      ), // Area segura
    ); // fin de sacaffold
  } //fin de widget
} // fin class _IngresoSistemaState
