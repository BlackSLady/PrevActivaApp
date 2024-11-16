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
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Expanded(
                      child: Column(
                        children: [
                          SizedBox(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                const Card(
                                  child: ListTile(
                                    title: Text(
                                      'Buenos días,',
                                      style: TextStyle(color: Colors.white),
                                    ),
                                    subtitle: Text(
                                      'Paula Molina',
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 25,
                                        fontFamily: 'Helvetica',
                                        fontWeight: FontWeight.w900,
                                      ),
                                    ),
                                    tileColor: Color(0xff3BB6A7),
                                  ),
                                ),
                                const Divider(
                                    height: 30, color: Colors.transparent),
                                Padding(
                                  padding: const EdgeInsets.all(18.0),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      const Text(
                                        'Cómo te sientes el día de hoy?',
                                        style: TextStyle(
                                            fontSize: 25,
                                            fontFamily: 'Futura',
                                            fontWeight: FontWeight.bold),
                                      ),
                                      const SizedBox(
                                        height: 8.0,
                                      ),
                                      ElevatedButton(
                                        onPressed: () {
                                          Navigator.push(
                                            context,
                                            MaterialPageRoute<void>(
                                              builder: (BuildContext context) {
                                                return Scaffold(
                                                  appBar: AppBar(
                                                    title: const Text(
                                                        'Evaluación'),
                                                  ),
                                                );
                                              },
                                            ),
                                          );
                                        },
                                        style: ElevatedButton.styleFrom(
                                          shape: const RoundedRectangleBorder(),
                                          minimumSize:
                                              const Size.fromHeight(43),
                                          backgroundColor:
                                              const Color(0xff6577DC),
                                          foregroundColor: Colors.white,
                                        ),
                                        child: const Text(
                                            'Comenzar evaluación de síntomas'),
                                      ),
                                      const Divider(
                                        height: 50,
                                        color: Colors.transparent,
                                      ),
                                      const Text(
                                        '  Seguimiento',
                                        style: TextStyle(
                                            fontSize: 18,
                                            fontFamily: 'Montserrat'),
                                      ),
                                      const Divider(
                                          height: 10,
                                          color: Colors.transparent),
                                      Card(
                                        child: ListTile(
                                          contentPadding:
                                              const EdgeInsets.symmetric(
                                                  horizontal: 10),
                                          minTileHeight: 110,
                                          visualDensity: const VisualDensity(
                                              vertical: 4.0),
                                          title: const Text(
                                            'Todo lo que debes saber del',
                                            style: TextStyle(height: 1),
                                          ),
                                          subtitle: const Text('Aedes aegypti',
                                              textHeightBehavior:
                                                  TextHeightBehavior(
                                                      applyHeightToLastDescent:
                                                          true,
                                                      applyHeightToFirstAscent:
                                                          false,
                                                      leadingDistribution:
                                                          TextLeadingDistribution
                                                              .proportional),
                                              style: TextStyle(
                                                  height: 0.8,
                                                  fontSize: 25,
                                                  fontWeight: FontWeight.w900,
                                                  fontFamily: 'Futura')),
                                          trailing: Image.asset(
                                            'assets/aedesAegypti.png',
                                            fit: BoxFit.fitWidth,
                                            width: 100,
                                            //alignment: const Alignment(90, 0),
                                          ),
                                          onTap: () {
                                            Navigator.push(
                                              context,
                                              MaterialPageRoute<void>(
                                                builder:
                                                    (BuildContext context) {
                                                  return Scaffold(
                                                    appBar: AppBar(
                                                      title: const Text(
                                                          'Aedes aegypti'),
                                                    ),
                                                  );
                                                },
                                              ),
                                            );
                                          },
                                        ),
                                      ),
                                      const SizedBox(
                                        height: 5.0,
                                      ),
                                      Card(
                                        child: ListTile(
                                          minTileHeight: 100,
                                          minVerticalPadding: 15,
                                          visualDensity: const VisualDensity(
                                              vertical: 4.0, horizontal: 4.0),
                                          subtitle: const Text(
                                            'Mapa epidemiológico',
                                            style: TextStyle(
                                                height: 1.1,
                                                fontSize: 25,
                                                fontWeight: FontWeight.w900,
                                                fontFamily: 'Futura'),
                                          ),
                                          onTap: () {
                                            Navigator.push(
                                              context,
                                              MaterialPageRoute<void>(
                                                builder:
                                                    (BuildContext context) {
                                                  return Scaffold(
                                                    appBar: AppBar(
                                                      title: const Text(
                                                          'Mapa epidemiológico'),
                                                    ),
                                                  );
                                                },
                                              ),
                                            );
                                          },
                                        ),
                                      ),
                                      const Divider(
                                        height: 30,
                                        color: Colors.transparent,
                                      ),
                                      const Text(
                                        '  Destacado',
                                        style: TextStyle(
                                            fontSize: 18,
                                            fontFamily: 'Montserrat'),
                                      ),
                                      const SizedBox(
                                        height: 10.0,
                                      ),
                                      Row(
                                        children: [
                                          FloatingActionButton.large(
                                            backgroundColor:
                                                const Color(0xffF3CFCF),
                                            child: Image.asset(
                                              'assets/nutricionista.png',
                                              //scale: 50,
                                            ),
                                            onPressed: () {
                                              Navigator.push(
                                                context,
                                                MaterialPageRoute<void>(
                                                  builder:
                                                      (BuildContext context) {
                                                    return Scaffold(
                                                      appBar: AppBar(
                                                        title: const Text(
                                                            'Recomendaciones'),
                                                      ),
                                                    );
                                                  },
                                                ),
                                              );
                                            },
                                          ),
                                          const SizedBox(width: 20),
                                          const Text('Recomendaciones',
                                              style: TextStyle(fontSize: 15)),
                                        ],
                                      )
                                    ],
                                  ),
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                    const Icon(
                      Icons.account_circle_sharp,
                      color: Color(0xff98A6F5),
                      size: 70,
                    ),
                    const Divider(height: 20, color: Colors.transparent),
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
