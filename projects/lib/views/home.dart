import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {

  String saludo() {
    String msg = 'Bienvenido,';
    final now = DateTime.now();

    if (now.hour >= 00 && now.hour <= 11) {
      msg = 'Buenos días,';
    }

    if (now.hour >= 12 && now.hour <= 17) {
      msg = 'Buenas tardes,';
    }

    if (now.hour >= 18 && now.hour <= 23) {
      msg = 'Buenas noches,';
    }

    return msg;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Prevención activa',
        ),
        backgroundColor: Colors.transparent,
        elevation: 0.0,
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
              Navigator.push(
                context,
                MaterialPageRoute<void>(
                  builder: (BuildContext context) {
                    return Scaffold(
                      appBar: AppBar(
                        title: const Text('Notificaciones'),
                      ),
                      body: const Center(
                        child: Text('En este momento no tienes notificaciones'),
                      ),
                    );
                  },
                ),
              );
            },
          ),
        ],
      ),
      extendBodyBehindAppBar: true,
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/bg/bgHome.png'),
            fit: BoxFit.cover,
          ),
        ),
        child: SafeArea(
          child: ListView(
            children: const <Widget>[
              SingleChildScrollView(
                child: Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Expanded(
                        child: Column(
                          children: [
                            Card(
                              child: ListTile(
                                title: Text(
                                  'texto',
                                  style: TextStyle(color: Colors.white),
                                ),
                                subtitle: Text(
                                  'Usuario',
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
                          ],
                        ),
                      ),
                      Expanded(
                        child: CircleAvatar(
                          radius: 30,
                          child: Icon(
                            Icons.person,
                            color: Color(0xff98A6F5),
                            size: 40,
                          ),
                        ),
                      )
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
