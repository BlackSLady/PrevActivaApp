import 'dart:developer';
import 'package:flutter/cupertino.dart';
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
                                      body: InfoSalud(),
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

class InfoSalud extends StatefulWidget {
  const InfoSalud({super.key});

  @override
  State<StatefulWidget> createState() => _InfoSaludState();
}

class _InfoSaludState extends State<InfoSalud> {
  String diaActual() {

    DateTime now = DateTime.now();
    String msg =
        "${now.month.toString().padLeft(2, '0')}-${now.day.toString().padLeft(2, '0')} ";

    return msg;
  }

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
    double w = (MediaQuery.sizeOf(context).width / 2) - 35;
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
      child: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            const SizedBox(height: 70),
            FadeInAnimation(
              delay: 1,
              child: Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        diaActual(),
                        style: const TextStyle(fontSize: 18),
                      ),
                      Text(
                        saludo(),
                        style: TextStyle(fontSize: 34),
                      ),
                    ],
                  ),
                  const Spacer(),
                  GestureDetector(
                    onLongPress: () {
                      log('triggered');
                      setState(() {});
                    },
                    onTap: () {
                      Navigator.push(
                        context,
                        CupertinoPageRoute(
                          builder: (_) => const Account(),
                        ),
                      );
                    },
                    child: SizedBox(
                      height: 70,
                      width: 70,
                      child: Hero(
                        tag: const Key('image'),
                        child: Container(
                          decoration: const ShapeDecoration(
                            shape: StarBorder(
                              innerRadiusRatio: .9,
                              pointRounding: .2,
                              points: 10,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 30),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  width: w,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      FadeInAnimation(
                        delay: 1.5,
                        child: AppCard(
                          height: 250,
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  const Text(
                                    "Pasos",
                                    style: TextStyle(fontSize: 18),
                                  ),
                                  const Spacer(),
                                  SizedBox(
                                    height: 30,
                                    width: 30,
                                    child: Image.asset(
                                      'assets/pasos.png',
                                      color: Colors.deepPurple,
                                    ),
                                  ),
                                ],
                              ),
                              const Expanded(
                                child: ProgressWithText(
                                  value: 2232,
                                  indicatorValue: .78,
                                  title: 'Pasos',
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(height: 30),
                      FadeInAnimation(
                        delay: 2,
                        child: AppCard(
                          height: w,
                          child: const Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  Text(
                                    "Sueño",
                                    style: TextStyle(fontSize: 18),
                                  ),
                                  Spacer(),
                                  Icon(
                                    Icons.shield_moon,
                                    color: Colors.deepPurple,
                                  ),
                                ],
                              ),
                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    IncreasingText(
                                      7.21,
                                      isSingle: false,
                                      style: TextStyle(fontSize: 28),
                                    ),
                                    Text(
                                      "Horas",
                                      style: TextStyle(color: Colors.grey),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(height: 30),
                      FadeInAnimation(
                        delay: 2.5,
                        child: AppCard(
                          height: 250,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  const Text("Agua"),
                                  const Spacer(),
                                  SizedBox(
                                    height: 30,
                                    width: 30,
                                    child: Image.asset(
                                      'assets/gotas.png',
                                      color: Colors.deepPurple,
                                    ),
                                  ),
                                ],
                              ),
                              Expanded(
                                child: Center(
                                  child: Image.asset(
                                    'assets/agua.png',
                                    height: 50,
                                  ),
                                ),
                              ),
                              const IncreasingText(
                                2,
                                isSingle: true,
                                style: TextStyle(
                                  fontSize: 32,
                                ),
                              ),
                              const Text(
                                "Vasos",
                                style: TextStyle(color: Colors.grey),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                const Spacer(),
                SizedBox(
                  width: w,
                  child: Column(
                    children: [
                      FadeInAnimation(
                        delay: 1.5,
                        child: AppCard(
                          height: 300,
                          color: Colors.deepPurple,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Wrap(
                                children: [
                                  Text(
                                    "Ritmo cardíaco",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 18,
                                    ),
                                  ),
                                  Spacer(),
                                  Icon(Icons.monitor_heart,
                                      color: Colors.white),
                                ],
                              ),
                              Expanded(
                                child: Icon(
                                  Icons.monitor_heart,
                                  size: 120,
                                  color: Colors.white,
                                ),
                              ),
                              const IncreasingText(
                                98,
                                isSingle: true,
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 40,
                                  height: .9,
                                ),
                              ),
                              const Text(
                                "bmp",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 18,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(height: 30),
                      FadeInAnimation(
                        delay: 2,
                        child: AppCard(
                          height: 225,
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  const Text(
                                    "Calorías",
                                    style: TextStyle(fontSize: 18),
                                  ),
                                  const Spacer(),
                                  SizedBox(
                                    height: 30,
                                    width: 30,
                                    child: Image.asset(
                                      'assets/energia.png',
                                      color: Colors.deepPurple,
                                    ),
                                  ),
                                ],
                              ),
                              const Expanded(
                                child: ProgressWithText(
                                  indicatorValue: .78,
                                  title: 'kcal',
                                  value: 553,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(height: 30),
                      const FadeInAnimation(
                        delay: 2.5,
                        child: AppCard(
                          height: 155,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  Text(
                                    "Gym",
                                    style: TextStyle(fontSize: 18),
                                  ),
                                  Spacer(),
                                  Icon(
                                    Icons.sports_score,
                                    color: Colors.deepPurple,
                                  ),
                                ],
                              ),
                              Spacer(),
                              Text(
                                "0",
                                style: TextStyle(fontSize: 32),
                              ),
                              Text(
                                "min",
                                style: TextStyle(color: Colors.grey),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(height: 50),
          ],
        ),
      ),
    ));
  }
}

class AppCard extends StatelessWidget {
  const AppCard({
    super.key,
    required this.child,
    required this.height,
    this.color,
  });

  final Widget child;
  final double height;
  final MaterialColor? color;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      height: height,
      decoration: BoxDecoration(
        color: color != null ? null : Colors.white,
        gradient: color == null
            ? null
            : LinearGradient(colors: [color!.shade300, color!.shade500]),
        borderRadius: BorderRadius.circular(30),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(.3),
            blurRadius: 60,
          ),
        ],
      ),
      child: child,
    );
  }
}

class IncreasingText extends StatefulWidget {
  const IncreasingText(
    this.value, {
    super.key,
    required this.isSingle,
    required this.style,
    this.suffix,
  });

  @override
  State<IncreasingText> createState() => _IncreasingTextState();
  final double value;
  final bool isSingle;
  final TextStyle style;
  final String? suffix;
}

class _IncreasingTextState extends State<IncreasingText>
    with SingleTickerProviderStateMixin {
  AnimationController? _controller;
  Animation<double>? animation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
        vsync: this, duration: const Duration(milliseconds: 1200));
    animation = Tween<double>(begin: 0, end: widget.value).animate(_controller!)
      ..addListener(() {
        setState(() {});
      });

    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      Future.delayed(const Duration(milliseconds: 200)).then(
        (value) => _controller!.forward(),
      );
    });
  }

  @override
  void dispose() {
    _controller!.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Text(
      animation == null
          ? "0"
          : animation!.value.toStringAsFixed(widget.isSingle ? 0 : 2) +
              (widget.suffix ?? ""),
      style: widget.style,
    );
  }
}

class ProgressWithText extends StatefulWidget {
  const ProgressWithText({
    super.key,
    required this.indicatorValue,
    required this.title,
    required this.value,
  });

  final double indicatorValue;
  final String title;
  final int value;

  @override
  State<ProgressWithText> createState() => _ProgressWithTextState();
}

class _ProgressWithTextState extends State<ProgressWithText>
    with SingleTickerProviderStateMixin {
  AnimationController? _controller;
  Animation<double>? valueAnimation;
  Animation<double>? indicatorAnimation;

  @override
  void initState() {
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 1200),
    );

    valueAnimation =
        Tween<double>(begin: 0, end: widget.value * 1).animate(_controller!)
          ..addListener(() {
            setState(() {});
          });
    indicatorAnimation = Tween<double>(begin: 0, end: widget.indicatorValue)
        .animate(_controller!)
      ..addListener(() {
        setState(() {});
      });
    super.initState();

    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      Future.delayed(const Duration(milliseconds: 200)).then(
        (value) => _controller!.forward(),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    double w = (MediaQuery.sizeOf(context).width / 2) - 35;
    return Stack(
      children: [
        Align(
          alignment: Alignment.center,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                "${valueAnimation?.value ?? 0}".split('.')[0],
                style: const TextStyle(fontSize: 20),
              ),
              Text(
                widget.title,
                style: const TextStyle(
                  color: Colors.grey,
                ),
              ),
            ],
          ),
        ),
        Align(
          alignment: Alignment.center,
          child: SizedBox.square(
            dimension: w - 80,
            child: RotatedBox(
              quarterTurns: 3,
              child: CircularProgressIndicator(
                color: Colors.deepPurple.shade400,
                strokeCap: StrokeCap.round,
                strokeWidth: 10,
                value: indicatorAnimation?.value ?? 0,
                backgroundColor: Colors.deepPurple.withOpacity(.2),
              ),
            ),
          ),
        ),
      ],
    );
  }
}

class FadeInAnimation extends StatefulWidget {
  const FadeInAnimation({super.key, required this.child, required this.delay});

  final Widget child;
  final double delay;

  @override
  State<FadeInAnimation> createState() => _FadeInAnimationState();
}

class _FadeInAnimationState extends State<FadeInAnimation>
    with TickerProviderStateMixin {
  late AnimationController controller;
  late Animation<double> animation;
  late Animation<double> animation2;

  @override
  void initState() {
    super.initState();
    controller = AnimationController(
        duration: Duration(milliseconds: (500 * widget.delay).round()),
        vsync: this);
    animation2 = Tween<double>(begin: -40, end: 0).animate(controller)
      ..addListener(() {
        setState(() {});
      });

    animation = Tween<double>(begin: 0, end: 1).animate(controller)
      ..addListener(() {
        setState(() {
          // The state that has changed here is the animation object’s value.
        });
      });
  }

  @override
  Widget build(BuildContext context) {
    controller.forward();
    return Transform.translate(
      offset: Offset(0, animation2.value),
      child: Opacity(
        opacity: animation.value,
        child: widget.child,
      ),
    );
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }
}
