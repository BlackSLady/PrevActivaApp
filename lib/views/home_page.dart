import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // --- AppBar --- //
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Prevención Activa'),
        actions: <Widget>[
          IconButton(
            icon: const Icon(
              Icons.notifications_none,
              size: 30,
            ),
            color: Colors.teal[400],
            tooltip: 'Notificaciones',
            onPressed: () {
              // Notificaciones
              Navigator.push(context, MaterialPageRoute<void>(
                builder: (BuildContext context) {
                  return Scaffold(
                      appBar: AppBar(
                        title: const Text('Notificaciones'),
                      ),
                      body: const Center(
                          child: Text(
                              'En este momento no tienes notificaciones')));
                },
              ));
            },
          )
        ],
      ),
      body: SafeArea(
        child: ListView(
          children: <Widget>[
            SingleChildScrollView(
              child: Container(
                padding: const EdgeInsets.all(8.0),
                child: const Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Expanded(
                      child: Card(
                        child: ListTile(
                          title: Text(
                            'Buenos días,',
                            style: TextStyle(color: Colors.white),
                          ),
                          subtitle: Text('Paula Molina',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 25,
                                  fontWeight: FontWeight.w900,
                                  fontFamily: 'Helvetica')),
                          tileColor: Color(0xff3BB6A7),
                        ),
                      ),
                    ),
                    Icon(
                      Icons.account_circle_sharp,
                      color: Color(0xff98A6F5),
                      size: 70,
                    ),
                    Divider(height: 20, color: Colors.transparent),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

/*
Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const Text(
                      'Cómo te sientes el día de hoy?',
                      style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.w900,
                          fontFamily: 'Helvetica'),
                    ),
                    FloatingActionButton.extended(
                      label: const Text('Comenzar evaluación de síntomas'),
                      onPressed: () {},
                    ),
                    const Divider(
                      height: 50,
                      color: Colors.transparent,
                    ),
                    const Text(
                      '  Seguimiento',
                      style: TextStyle(fontSize: 18),
                    ),
                    Card(
                      child: ListTile(
                        title: const Text('Todo lo que debes saber del'),
                        subtitle: const Text('Aedes aegypti',
                            style: TextStyle(
                                fontSize: 25,
                                fontWeight: FontWeight.w900,
                                fontFamily: 'Futura')),
                        onTap: () {
                          Navigator.push(context, MaterialPageRoute<void>(
                            builder: (BuildContext context) {
                              return Scaffold(
                                appBar: AppBar(
                                  title: const Text('Aedes aegypti'),
                                ),
                              );
                            },
                          ),
                          );
                        },
                      ),
                    ),
                  ],
                ),
 */
