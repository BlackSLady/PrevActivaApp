import 'package:flutter/material.dart';
import 'package:apps/db/login.dart';

class Settings extends StatefulWidget {
  const Settings({super.key});

  @override
  State<Settings> createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Configuración'),
      ),
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment(0, 1.3),
            colors: <Color>[
              Color(0xffe9f8f5),
              Color(0xffe9ecff),
              Color(0xfffff6e9),
              Color(0xffd7dcff),
            ],
          ),
        ),
        child: SafeArea(
          child: Scrollbar(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                children: [
                  SizedBox(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        SizedBox(height: 20),
                        //Card( child:
                        ListTile(
                          leading: const Icon(Icons.info,
                              //color: Colors.teal,
                              color: Color(0xff6577dc)
                              //color: Color(0xffA8DED7),
                              ),
                          title: const Text('Info. de la aplicación'),
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute<void>(
                                builder: (BuildContext context) {
                                  return Scaffold(
                                    appBar: AppBar(
                                      title: const Text(
                                          'Información de la aplicación'),
                                    ),
                                    body: InfoApp(),
                                  );
                                },
                              ),
                            );
                          },
                        ),
                        //),
                        //Card( child:
                        ListTile(
                          leading: const Icon(
                            Icons.help,
                            //color: Colors.teal,
                            color: Color(0xff6577dc),
                            //color: Color(0xffA8DED7),
                          ),
                          title: const Text('Ayuda'),
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute<void>(
                                builder: (BuildContext context) {
                                  return Scaffold(
                                    appBar: AppBar(
                                      title: const Text('Ayuda'),
                                    ),
                                    body: Help(),
                                  );
                                },
                              ),
                            );
                          },
                        ),
                        //),
                        const Divider(
                          height: 50,
                          // color: Colors.transparent,
                          color: Color(0xffE0E3F4),
                        ),
                        const Text(
                          '  Cuenta',
                          style: TextStyle(fontSize: 18),
                        ),
                        TextButton(
                          onPressed: () => showDialog<String>(
                            context: context,
                            builder: (BuildContext context) => AlertDialog(
                              title: const Text('Cerrar sesión'),
                              content: const Text('¿Deseas cerrar sesión?'),
                              actions: <Widget>[
                                TextButton(
                                  onPressed: () =>
                                      Navigator.pop(context, 'Cancel'),
                                  child: const Text('Cancel'),
                                ),
                                TextButton(
                                  onPressed: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute<void>(
                                        builder: (BuildContext context) =>
                                            const Login(),
                                      ),
                                    );
                                  },
                                  child: const Text('OK'),
                                ),
                              ],
                            ),
                          ),
                          child: Text(
                            'Cerrar sesión',
                            style: TextStyle(fontSize: 18, color: Colors.red),
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class InfoApp extends StatelessWidget {
  const InfoApp({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment(0, 1.3),
            colors: <Color>[
              Color(0xffe9f8f5),
              Color(0xffe9ecff),
              Color(0xfffff6e9),
              Color(0xffd7dcff),
            ],
          ),
        ),
        child: SafeArea(
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(40.0),
              child: Column(
                children: <Widget>[
                  SizedBox(
                    height: 700,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(20),
                          child: Text(
                            'Prevención activa',
                            style: TextStyle(fontSize: 20),
                          ),
                        ),
                        Image.asset(
                          'assets/logoApp_PA.png',
                          scale: 40,
                        ),
                        Padding(
                          padding: const EdgeInsets.all(20),
                          child: Text(
                            'Universidad Nacional Abierta y a Distancia - UNAD \n'
                            'Quinto Semeste \n'
                            'Proyecto de Ingeniería I - Grupo 127\n',
                            style: TextStyle(fontSize: 12),
                            textAlign: TextAlign.center,
                          ),
                        ),
                        OutlinedButton(
                          style: OutlinedButton.styleFrom(
                            foregroundColor: Colors.teal,
                            side: BorderSide(width: 1.0, color: Colors.teal),
                          ),
                          onPressed: () => showDialog<String>(
                            context: context,
                            builder: (BuildContext context) => AlertDialog(
                              title: const Text('Créditos'),
                              content: const Text(
                                'Aplicación móvil Diseñada por: \n'
                                'Paula Alejandra Molina Barragán \n \n'
                                'Cuestionario Prevención activa: \n'
                                'Karen Tatiana Gutierrez Reyes \n \n'
                                'Cuestionario Evaluación de síntomas: \n'
                                'Yazmín Angélica Murillo Ruiz',
                              ),
                              actions: <Widget>[
                                TextButton(
                                  onPressed: () => Navigator.pop(context, 'OK'),
                                  child: const Text('OK'),
                                ),
                              ],
                            ),
                          ),
                          child: Text('Créditos'),
                        ),
                        // TEXTO
                        const Divider(height: 10, color: Colors.transparent),
                        const SizedBox(
                          height: 10.0,
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class Help extends StatelessWidget {
  const Help({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment(0, 1.3),
            colors: <Color>[
              Color(0xffe9f8f5),
              Color(0xffe9ecff),
              Color(0xfffff6e9),
              Color(0xffd7dcff),
            ],
          ),
        ),
        child: SafeArea(
          child: ListView(
            children: <Widget>[
              SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.start,
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Text(
                        '  Sobre la aplicación',
                        style: TextStyle(
                            fontSize: 20,
                            //fontWeight: FontWeight.bold,
                            fontFamily: 'Futura'),
                      ),
                      Padding(
                        padding: EdgeInsets.all(20),
                        child: Card(
                          elevation: 5,
                          color: Color(0xffE3E7FF),
                          child: ListTile(
                            minTileHeight: 100,
                            minVerticalPadding: 15,
                            visualDensity: const VisualDensity(
                                vertical: 4.0, horizontal: 4.0),
                            subtitle: Text(
                              'Prevención activa es una plataforma digital '
                              'diseñada con el fin de identificar enfermedades transmitidas '
                              'por vectores en el municipio del Líbano, Tolima, recolectando '
                              'y analizando la información en tiempo real e identificando patrones '
                              'por medio de encuestas. \n\n'
                              'Esta plataforma permite que la comunidad participe e interactúe '
                              'de manera autónoma, informándose sobre las enfermedades '
                              'transmitidas por vectores, como por ejemplo las zonas en donde se encuentran '
                              'con más frecuencia, las enfermedades o virus que transmiten, recomendaciones '
                              'y llenando cuestionarios para conocer su estado actual y así saber si es necesario '
                              'acudir con un médico en caso de sentir síntomas.',
                              style: TextStyle(fontSize: 17),
                            ),
                          ),
                        ),
                      ),
                      const Divider(height: 20, color: Colors.transparent),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
