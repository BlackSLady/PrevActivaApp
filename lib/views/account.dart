import 'package:flutter/material.dart';

class Account extends StatefulWidget {
  const Account({super.key});

  @override
  State<Account> createState() => _AccountState();
}

// --- AppBar --- //
class _AccountState extends State<Account> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Perfil'),
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                IconButton(
                  hoverColor: Colors.teal[300],
                  icon: const Badge(
                    offset: Offset(0, 0),
                    alignment: Alignment(0.8, 0.5),
                    largeSize: 35,
                    backgroundColor: Color(0xff82D6CB),
                    label: Icon(
                      Icons.camera_alt,
                      shadows: <Shadow>[
                        Shadow(color: Colors.teal, blurRadius: 3)
                      ],
                      color: Colors.white,
                    ),
                    child: Icon(
                      Icons.account_circle_sharp,
                      color: Color(0xff6577dc),
                      size: 120,
                    ),
                  ),
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute<void>(
                      builder: (BuildContext context) {
                        return Scaffold(
                            appBar: AppBar(
                              title: const Text('Foto de Perfil'),
                            ),
                            body: const Center(
                                child: Card(
                              child: SizedBox(
                                width: 350,
                                height: 350,
                                child: Icon(
                                  Icons.account_circle,
                                  weight: 350,
                                  size: 350,
                                  color: Colors.black12,
                                ),
                              ),
                            )
                                //Image.asset('assets/logoApp_PA.png', fit: BoxFit.fitHeight, scale: 10,),
                                ));
                      },
                    ));
                  },
                ),
                const Text('Paula Molina',
                    style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.w900,
                        fontFamily: 'Futura')),
                const Divider(height: 20, color: Colors.transparent),
                SizedBox(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: <Widget>[
                      const Text(
                        '  Información',
                        style: TextStyle(fontSize: 18),
                      ),
                      Card(
                        child: ListTile(
                          leading: const Icon(Icons.person,
                              color: Color(0xffA8DED7),
                              shadows: <Shadow>[
                                Shadow(color: Colors.teal, blurRadius: 1)
                              ]),
                          title: const Text('Información básica'),
                          onTap: () {
                            Navigator.push(context, MaterialPageRoute<void>(
                              builder: (BuildContext context) {
                                return Scaffold(
                                  appBar: AppBar(
                                    title: const Text('Información básica'),
                                  ),
                                );
                              },
                            ));
                          },
                        ),
                      ),
                      Card(
                        child: ListTile(
                          leading: const Icon(Icons.medical_information,
                              color: Color(0xffC6CDF5),
                              shadows: <Shadow>[
                                Shadow(
                                    color: Colors.deepPurple, blurRadius: 0.2)
                              ]),
                          title: const Text('Informe de salud'),
                          onTap: () {
                            Navigator.push(context, MaterialPageRoute<void>(
                              builder: (BuildContext context) {
                                return Scaffold(
                                  appBar: AppBar(
                                    title: const Text('Informe de salud'),
                                  ),
                                );
                              },
                            ));
                          },
                        ),
                      ),
                      Card(
                        child: ListTile(
                          leading: const Icon(
                            Icons.health_and_safety,
                            color: Color(0xffF3CFCF),
                            shadows: <Shadow>[
                              Shadow(color: Colors.red, blurRadius: 0.5)
                            ],
                          ),
                          title: const Text('Historial clínico'),
                          onTap: () {
                            Navigator.push(context, MaterialPageRoute<void>(
                              builder: (BuildContext context) {
                                return Scaffold(
                                  appBar: AppBar(
                                    title: const Text('Historial clínico'),
                                  ),
                                );
                              },
                            ));
                          },
                        ),
                      ),
                      Card(
                        child: ListTile(
                          leading: const Icon(Icons.medication,
                              color: Color(0xffF2E2C9),
                              shadows: <Shadow>[
                                Shadow(
                                    color: Colors.orangeAccent, blurRadius: 1)
                              ]),
                          title: const Text('Medicamentos y alergias'),
                          onTap: () {
                            Navigator.push(context, MaterialPageRoute<void>(
                              builder: (BuildContext context) {
                                return Scaffold(
                                  appBar: AppBar(
                                    title:
                                        const Text('Medicamentos y alergias'),
                                  ),
                                );
                              },
                            ));
                          },
                        ),
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
                          leading: const Icon(Icons.person,
                              color: Color(0xffF3D5C4),
                              shadows: <Shadow>[
                                Shadow(color: Colors.deepOrange, blurRadius: 1)
                              ]),
                          title: const Text('Seguimiento de síntomas'),
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute<void>(
                                builder: (BuildContext context) {
                                  return Scaffold(
                                    appBar: AppBar(
                                      title:
                                          const Text('Seguimiento de síntomas'),
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
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
