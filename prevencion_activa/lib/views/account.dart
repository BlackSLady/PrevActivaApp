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
        child: Center(
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
                      Navigator.push(
                        context,
                        MaterialPageRoute<void>(
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
                                  ),
                            );
                          },
                        ),
                      );
                    },
                  ),
                  const Text(
                    'Usuario',
                    style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.w900,
                        fontFamily: 'Futura'),
                  ),
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
                              Navigator.push(
                                context,
                                MaterialPageRoute<void>(
                                  builder: (BuildContext context) {
                                    return Scaffold(
                                      appBar: AppBar(
                                        title: const Text('Información básica'),
                                        //leading: IconButton(onPressed: (){}, icon: Icon(Icons.edit)),
                                      ),
                                      body: InfoBas(),
                                    );
                                  },
                                ),
                              );
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
                              Navigator.push(
                                context,
                                MaterialPageRoute<void>(
                                  builder: (BuildContext context) {
                                    return Scaffold(
                                      appBar: AppBar(
                                        title: const Text('Informe de salud'),
                                      ),
                                    );
                                  },
                                ),
                              );
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
                              Navigator.push(
                                context,
                                MaterialPageRoute<void>(
                                  builder: (BuildContext context) {
                                    return Scaffold(
                                      appBar: AppBar(
                                        title: const Text('Historial clínico'),
                                      ),
                                    );
                                  },
                                ),
                              );
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
                              Navigator.push(
                                context,
                                MaterialPageRoute<void>(
                                  builder: (BuildContext context) {
                                    return Scaffold(
                                      appBar: AppBar(
                                        title: const Text(
                                            'Medicamentos y alergias'),
                                      ),
                                    );
                                  },
                                ),
                              );
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
                                  Shadow(
                                      color: Colors.deepOrange, blurRadius: 1)
                                ]),
                            title: const Text('Seguimiento de síntomas'),
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute<void>(
                                  builder: (BuildContext context) {
                                    return Scaffold(
                                      appBar: AppBar(
                                        title: const Text(
                                            'Seguimiento de síntomas'),
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
      ),
    );
  }
}

enum Genero {
  femenino('Femenino'),
  masculino('Masculino');

  const Genero(this.label);
  final String label;
}

class InfoBas extends StatefulWidget {
  const InfoBas({super.key});

  @override
  State<StatefulWidget> createState() => _InfoBasState();
}

class _InfoBasState extends State<InfoBas> {
  final TextEditingController generoController = TextEditingController();
  final name = TextEditingController();
  final age = TextEditingController();
  final gen = TextEditingController();

  String nombre = '';
  String edad = '';
  String genero = '';
  String usuario = 'Usuario';

  Genero? selectedItem;

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
            children: [
              SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      IconButton(
                        iconSize: 25,
                        hoverColor: Colors.teal[300],
                        icon: Badge(
                          offset: const Offset(0, 0),
                          alignment: const Alignment(0.8, 0.5),
                          largeSize: 35,
                          backgroundColor: const Color(0xff82D6CB),
                          label: IconButton(
                            onPressed: () {},
                            icon: const Icon(
                              Icons.camera_alt,
                              shadows: <Shadow>[
                                Shadow(color: Colors.teal, blurRadius: 3)
                              ],
                              color: Colors.white,
                            ),
                          ),
                          child: const Icon(
                            Icons.account_circle_sharp,
                            color: Color(0xff6577dc),
                            size: 120,
                          ),
                        ),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute<void>(
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
                                      ),
                                );
                              },
                            ),
                          );
                        },
                      ),
                      Text(
                        usuario,
                        style: const TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.w900,
                            fontFamily: 'Futura'),
                      ),
                      const Divider(height: 50, color: Colors.transparent),
                      TextField(
                        controller: name,
                        decoration: InputDecoration(
                          labelText: 'Nombre',
                          labelStyle: TextStyle(color: Colors.black45),
                          filled: true,
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Color(0xff8DD2CA),
                            ),
                            borderRadius: BorderRadius.all(
                              Radius.circular(13.0),
                            ),
                          ),
                          border: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Color(0xff8DD2CA),
                            ),
                          ),
                          fillColor: Color(0xffF3F4F5),
                        ),
                      ),
                      SizedBox(
                        height: 16,
                      ),
                      TextField(
                        controller: age,
                        decoration: InputDecoration(
                          labelText: 'Edad',
                          labelStyle: TextStyle(color: Colors.black45),
                          filled: true,
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Color(0xff8DD2CA),
                            ),
                            borderRadius: BorderRadius.all(
                              Radius.circular(13.0),
                            ),
                          ),
                          border: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Color(0xff8DD2CA),
                            ),
                          ),
                          fillColor: Color(0xffF3F4F5),
                        ),
                      ),
                      SizedBox(
                        height: 16,
                      ),
                      SizedBox(
                        width: double.infinity,
                        //width: 700,
                        //padding: const EdgeInsets.symmetric(vertical: 20),
                        child: DropdownMenu<Genero>(
                          inputDecorationTheme: InputDecorationTheme(
                            activeIndicatorBorder: BorderSide(
                              color: Color(0xff8DD2CA),
                            ),
                            labelStyle: TextStyle(color: Colors.black45),
                            filled: true,
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Color(0xff8DD2CA),
                              ),
                              borderRadius: BorderRadius.all(
                                Radius.circular(13.0),
                              ),
                            ),
                            border: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Color(0xff8DD2CA),
                              ),
                            ),
                            fillColor: Color(0xffF3F4F5),
                          ),
                          //expandedInsets: EdgeInsets.symmetric(vertical: 50),
                          initialSelection: Genero.femenino,
                          controller: generoController,
                          requestFocusOnTap: true,
                          label: const Text('Género'),
                          onSelected: (Genero? label) {
                            setState(
                              () {
                                selectedItem = label;
                              },
                            );
                          },
                          dropdownMenuEntries:
                              Genero.values.map<DropdownMenuEntry<Genero>>(
                            (Genero label) {
                              return DropdownMenuEntry<Genero>(
                                value: label,
                                label: label.label,
                                enabled: true,
                                style: MenuItemButton.styleFrom(
                                  foregroundColor: Colors.teal,
                                ),
                              );
                            },
                          ).toList(),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      SizedBox(
                        width: double.infinity,
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: const Color(0xff7ED4DB),
                            foregroundColor: Colors.white,
                          ),
                          onPressed: () {
                            nombre = name.text;
                            edad = age.text;
                            usuario = name.text;
                          },
                          child: Text('Guardar'),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
