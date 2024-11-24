import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  void paginaWeb({required String dominio, required String ruta}) async {
    var url = Uri.https(dominio, ruta);
    if (await canLaunchUrl(url)) {
      await launchUrl(url);
    }
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
              Navigator.push(
                context,
                MaterialPageRoute<void>(
                  builder: (BuildContext context) {
                    return Scaffold(
                      appBar: AppBar(
                        title: const Text('Notificaciones'),
                      ),
                      body: Center(
                        child: Text('En este momento no tienes notificaciones'),
                      ),
                    );
                  },
                ),
              );
            },
          )
        ],
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
                                  Card(
                                    child: ListTile(
                                      title: Text(
                                        saludo(),
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
                                      tileColor: const Color(0xff3BB6A7),
                                    ),
                                  ),
                                  const Divider(
                                      height: 30, color: Colors.transparent),
                                  Padding(
                                    padding: const EdgeInsets.all(18.0),
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
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
                                          height: 12.0,
                                        ),
                                        ElevatedButton(
                                          onPressed: () => paginaWeb(
                                              dominio: 'docs.google.com',
                                              ruta:
                                                  '/forms/d/e/1FAIpQLSdBmn1SuRBxxbyXLw03Ku2FqcIKc2VG91qSR3XCBqAPKYPE4Q/formResponse'),
                                          style: ElevatedButton.styleFrom(
                                            shape:
                                                const RoundedRectangleBorder(),
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
                                          elevation: 5,
                                          child: Container(
                                            decoration: const BoxDecoration(
                                              boxShadow: <BoxShadow>[
                                                BoxShadow(
                                                    blurStyle: BlurStyle.inner,
                                                    spreadRadius: 1,
                                                    offset: Offset(2, 2),
                                                    blurRadius: 5,
                                                    color: Color.fromARGB(
                                                        115, 59, 59, 98))
                                              ],
                                              borderRadius: BorderRadius.all(
                                                  Radius.circular(15)),
                                              image: DecorationImage(
                                                fit: BoxFit.cover,
                                                image: AssetImage(
                                                    'assets/botonFondo.png'),
                                              ),
                                            ),
                                            child: ListTile(
                                              contentPadding:
                                                  const EdgeInsets.symmetric(
                                                      horizontal: 10),
                                              minTileHeight: 110,
                                              visualDensity:
                                                  const VisualDensity(
                                                      vertical: 4.0),
                                              title: const Text(
                                                'Todo lo que debes saber del',
                                                style: TextStyle(height: 1),
                                              ),
                                              subtitle: const Text(
                                                  'Aedes aegypti',
                                                  textHeightBehavior: TextHeightBehavior(
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
                                                      fontWeight:
                                                          FontWeight.w900,
                                                      fontFamily: 'Futura')),
                                              trailing: Image.asset(
                                                'assets/aedesAegypti.png',
                                                fit: BoxFit.fitWidth,
                                                width: 100,
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
                                                        body: Aedes(),
                                                      );
                                                    },
                                                  ),
                                                );
                                              },
                                            ),
                                          ),
                                        ),
                                        const Divider(
                                            height: 10,
                                            color: Colors.transparent),
                                        Card(
                                          elevation: 5,
                                          child: Container(
                                            decoration: const BoxDecoration(
                                              boxShadow: <BoxShadow>[
                                                BoxShadow(
                                                    spreadRadius: 1,
                                                    offset: Offset(2, 2),
                                                    blurRadius: 5,
                                                    blurStyle: BlurStyle.inner,
                                                    color: Color.fromARGB(
                                                        115, 59, 59, 98))
                                              ],
                                              borderRadius: BorderRadius.all(
                                                  Radius.circular(15)),
                                              image: DecorationImage(
                                                colorFilter: ColorFilter.mode(
                                                    Colors.redAccent,
                                                    BlendMode.saturation),
                                                fit: BoxFit.cover,
                                                image: AssetImage(
                                                    'assets/botonFondo.png'),
                                              ),
                                            ),
                                            child: ListTile(
                                              contentPadding:
                                                  const EdgeInsets.symmetric(
                                                      horizontal: 10),
                                              minTileHeight: 110,
                                              visualDensity:
                                                  const VisualDensity(
                                                      vertical: 4.0),
                                              title: const Text(
                                                'Enfermedades transmitidas',
                                                style: TextStyle(height: 1),
                                              ),
                                              subtitle: const Text(
                                                  'por vectores',
                                                  textHeightBehavior: TextHeightBehavior(
                                                      applyHeightToLastDescent:
                                                          true,
                                                      applyHeightToFirstAscent:
                                                          false,
                                                      leadingDistribution:
                                                          TextLeadingDistribution
                                                              .proportional),
                                                  style: TextStyle(
                                                      //color: Colors.white,
                                                      height: 0.8,
                                                      fontSize: 25,
                                                      fontWeight:
                                                          FontWeight.w900,
                                                      fontFamily: 'Futura')),
                                              leading: Image.asset(
                                                'assets/triatominos.png',
                                                //fit: BoxFit.fitWidth,
                                                width: 100,
                                              ),
                                              onTap: () => paginaWeb(
                                                  dominio:
                                                      'prevencion-activa.involve.me',
                                                  ruta: '/prevencion-activa'),
                                            ),
                                          ),
                                        ),
                                        const SizedBox(
                                          height: 5.0,
                                        ),
                                        Card(
                                          elevation: 5,
                                          child: Container(
                                            decoration: const BoxDecoration(
                                              boxShadow: <BoxShadow>[
                                                BoxShadow(
                                                    spreadRadius: 1,
                                                    offset: Offset(2, 2),
                                                    blurRadius: 5,
                                                    blurStyle: BlurStyle.inner,
                                                    color: Color.fromARGB(
                                                        115, 59, 59, 98))
                                              ],
                                              borderRadius: BorderRadius.all(
                                                  Radius.circular(12)),
                                              image: DecorationImage(
                                                colorFilter: ColorFilter.mode(
                                                    Colors.black38,
                                                    BlendMode.multiply),
                                                opacity: 1.0,
                                                fit: BoxFit.cover,
                                                image: AssetImage(
                                                    'assets/libano.jpg'),
                                              ),
                                            ),
                                            child: ListTile(
                                              minTileHeight: 100,
                                              minVerticalPadding: 15,
                                              visualDensity:
                                                  const VisualDensity(
                                                      vertical: 4.0,
                                                      horizontal: 4.0),
                                              subtitle: const Text(
                                                'Mapa epidemiológico',
                                                style: TextStyle(
                                                    color: Colors.white,
                                                    height: 1.1,
                                                    fontSize: 25,
                                                    fontWeight: FontWeight.w900,
                                                    fontFamily: 'Futura'),
                                              ),
                                              trailing: const Icon(
                                                Icons.incomplete_circle,
                                                color: Colors.tealAccent,
                                                size: 20,
                                              ),
                                              onTap: () => paginaWeb(
                                                  dominio:
                                                      'portalsivigila.ins.gov.co',
                                                  ruta: ''),
                                            ),
                                          ),
                                        ),
                                        const Divider(
                                          height: 30,
                                          color: Colors.transparent,
                                        ),
                                        const SizedBox(
                                          height: 10,
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
                                                //scale: 6,
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
                                                        body: Recom(),
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
      ),
    );
  }
}

// BOTON Aedes
class Aedes extends StatelessWidget {
  const Aedes({super.key});

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
                        '  ¿Qué es?',
                        style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'Montserrat'),
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
                              'Conocido como el "mosquito del dengue", "mosquito de la fiebre amarilla" o "mosquito momia";'
                              ' es un mosquito vector portador de diferentes virus transmitibles como el chikungunya,'
                              ' Dengue, Filariasis linfática, Fiebre del valle del Rift, Fiebre amarilla y Zika. \n'
                              'Se reconoce por sus distintivas marcas blancas, aunque sus diferencias en comparación con otros mosquitos '
                              'pueden ser ligeras. Son más activos durante el día.',
                              style: TextStyle(fontSize: 18),
                            ),
                          ),
                        ),
                      ),
                      Row(
                        children: [
                          Expanded(
                            child: SizedBox(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  const Divider(
                                      height: 30, color: Colors.transparent),
                                  Padding(
                                    padding: const EdgeInsets.all(18.0),
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        // TEXTO //

                                        const SizedBox(
                                          height: 12.0,
                                        ),
                                        const Divider(
                                          height: 20,
                                          color: Colors.transparent,
                                        ),
                                        const Text(
                                          '  ¿Dónde se encuentra?',
                                          style: TextStyle(
                                              fontSize: 18,
                                              fontWeight: FontWeight.bold,
                                              fontFamily: 'Montserrat'),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: const Text(
                                            'Se encuentra en sitios con sombra y aguas estancadas claras o limpias como estanques, albercas o '
                                            'lavaderos sin mantenimiento, floreros, bebedores para animales, entre otros, en donde luego'
                                            'deposita sus huevos. Un solo mosquito puede poner 80 a 150 huevos, cuatro veces al día.',
                                            style: TextStyle(fontSize: 16),
                                          ),
                                        ),
                                        SizedBox(
                                          height: 10.0,
                                        ),
                                        const Divider(
                                          height: 50,
                                          color: Colors.transparent,
                                        ),
                                        const Text(
                                          '  Método de contagio',
                                          style: TextStyle(
                                              fontSize: 18,
                                              fontWeight: FontWeight.bold,
                                              fontFamily: 'Montserrat'),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: const Text(
                                            'Si el mosquito Aedes Aegypti está infectado con alguno de los virus '
                                            'mencionados anteriormente y luego se alimenta con sangre de una persona sana,'
                                            ' le transmite cualquiera de estas enfermedades.',
                                            style: TextStyle(fontSize: 16),
                                          ),
                                        ),
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                          Image.asset(
                            'assets/aedesAegypti.png',
                            scale: 50,
                            fit: BoxFit.cover,
                          ),
                        ],
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

// --- RECOMENDACIONES --- //

class Recom extends StatelessWidget {
  const Recom({super.key});
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
                    children: <Widget>[
                      Text(
                        'Síntomas',
                        style: TextStyle(fontSize: 18),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      SizedBox(
                        height: 150.0,
                        child: ListView(
                          physics: ClampingScrollPhysics(),
                          shrinkWrap: true,
                          scrollDirection: Axis.horizontal,
                          //itemCount: 6,
                          //itemBuilder: (BuildContext child, int custom) =>
                          children: [
                            Row(
                              children: [
                                Container(
                                  decoration: BoxDecoration(
                                    border: Border(),
                                    borderRadius: BorderRadius.all(
                                      Radius.circular(12),
                                    ),
                                  ),
                                  width: 160,
                                  height: 160.0,
                                  child: Card(
                                    child: ListTile(
                                      title: Text('Fiebre'),
                                      subtitle:
                                          Image.asset('assets/fiebre.png'),
                                    ),
                                  ),
                                ),
                                SizedBox(width: 10),
                                Container(
                                  //alignment: Alignment.bottomCenter,
                                  decoration: BoxDecoration(
                                    border: Border(),
                                    borderRadius: BorderRadius.all(
                                      Radius.circular(12),
                                    ),
                                  ),
                                  width: 160,
                                  height: 150.0,
                                  child: Card(
                                    child: ListTile(
                                      minTileHeight: 110,
                                      visualDensity:
                                          const VisualDensity(vertical: 4.0),
                                      title: Text(
                                        'Dolor en las articulaciones',
                                        textHeightBehavior: TextHeightBehavior(
                                            applyHeightToLastDescent: true,
                                            applyHeightToFirstAscent: false,
                                            leadingDistribution:
                                                TextLeadingDistribution
                                                    .proportional),
                                        style: TextStyle(
                                          height: 0.8,
                                        ),
                                      ),
                                      subtitle: Image.asset(
                                        'assets/articulaciones.png',
                                        scale: 20,
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(width: 10),
                                Container(
                                  decoration: BoxDecoration(
                                    border: Border(),
                                    borderRadius: BorderRadius.all(
                                      Radius.circular(12),
                                    ),
                                  ),
                                  width: 160,
                                  height: 150.0,
                                  child: Card(
                                    child: ListTile(
                                      title: Text(
                                        'Pérdida de apetito',
                                        textHeightBehavior: TextHeightBehavior(
                                            applyHeightToLastDescent: true,
                                            applyHeightToFirstAscent: false,
                                            leadingDistribution:
                                                TextLeadingDistribution
                                                    .proportional),
                                        style: TextStyle(
                                          height: 0.8,
                                        ),
                                      ),
                                      subtitle: Image.asset(
                                          'assets/apetito.png',
                                          scale: 20),
                                    ),
                                  ),
                                ),
                                SizedBox(width: 10),
                                Container(
                                  decoration: BoxDecoration(
                                    border: Border(),
                                    borderRadius: BorderRadius.all(
                                      Radius.circular(12),
                                    ),
                                  ),
                                  width: 160,
                                  height: 150.0,
                                  child: Card(
                                    child: ListTile(
                                      title: Text(
                                        'Sangrado de encías',
                                        textHeightBehavior: TextHeightBehavior(
                                            applyHeightToLastDescent: true,
                                            applyHeightToFirstAscent: false,
                                            leadingDistribution:
                                                TextLeadingDistribution
                                                    .proportional),
                                        style: TextStyle(
                                          height: 0.8,
                                        ),
                                      ),
                                      subtitle: Image.asset('assets/encias.png',
                                          scale: 52,
                                          fit: BoxFit.scaleDown,
                                          alignment: Alignment.topCenter),
                                    ),
                                  ),
                                ),
                                SizedBox(width: 10),
                                Container(
                                  decoration: BoxDecoration(
                                    border: Border(),
                                    borderRadius: BorderRadius.all(
                                      Radius.circular(12),
                                    ),
                                  ),
                                  width: 160,
                                  height: 150.0,
                                  child: Card(
                                    child: ListTile(
                                      title: Text(
                                        'Dolor abdominal',
                                        textHeightBehavior: TextHeightBehavior(
                                            applyHeightToLastDescent: true,
                                            applyHeightToFirstAscent: false,
                                            leadingDistribution:
                                                TextLeadingDistribution
                                                    .proportional),
                                        style: TextStyle(
                                          height: 0.8,
                                        ),
                                      ),
                                      subtitle: Image.asset(
                                          'assets/abdominal.png',
                                          scale: 22),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 40,
                      ),
                      Text(
                        'Recomendaciones',
                        style: TextStyle(fontSize: 18),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Card(
                        color: Color(0xffC7EFEC),
                        child: ListTile(
                          title: Text(
                              'Cambia frecuentemente el agua de los bebederos y floreros'),
                        ),
                      ),
                      Card(
                        color: Color(0xffC7EFEC),
                        child: ListTile(
                          title:
                              Text('Cerrar los recipientes que contienen agua'),
                        ),
                      ),
                      Card(
                        color: Color(0xffC7EFEC),
                        child: ListTile(
                          title: Text('Utilizar repelentes'),
                        ),
                      ),
                      Card(
                        color: Color(0xffC7EFEC),
                        child: ListTile(
                          title: Text('Lavar y cepillar tanques y albercas'),
                        ),
                      ),
                      Card(
                        color: Color(0xffC7EFEC),
                        child: ListTile(
                          title: Text('Recoger basuras y residuos sólidos'),
                        ),
                      ),
                      const Divider(
                        height: 20,
                        color: Colors.transparent,
                      ),
                      SizedBox(
                        height: 40,
                      ),
                      Text(
                        'Si tienes dengue evita',
                        style: TextStyle(fontSize: 18),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Card(
                        color: Color(0xffD7D4F3),
                        child: ListTile(
                          title: Text('Actividad física y deporte'),
                          subtitle: Text(
                              'Es importante el reposo, en especial si se acaba de ir la fiebre'),
                          trailing: Icon(
                            Icons.fitness_center,
                            color: Colors.teal,
                            size: 40,
                          ),
                        ),
                      ),
                      Card(
                        color: Color(0xffD7D4F3),
                        child: ListTile(
                          title: Text('Tomar gaseosas y bebidas energéticas'),
                          subtitle: Text(
                              'Se recomienda tomar leche o jugos naturales sin azúcar'),
                          trailing: Icon(
                            Icons.liquor,
                            color: Colors.teal,
                            size: 40,
                          ),
                        ),
                      ),
                      Card(
                        color: Color(0xffD7D4F3),
                        child: ListTile(
                          title: Text('Tomar agua pura'),
                          subtitle: Text(
                              'El agua pura puede llegar a causar problemas con los electrólitos'),
                          trailing: Icon(
                            Icons.local_drink,
                            color: Colors.teal,
                            size: 40,
                          ),
                        ),
                      ),
                      Card(
                        color: Color(0xffD7D4F3),
                        child: ListTile(
                          title: Text('Tomar medicamentos'),
                          subtitle: Text(
                              'El Naproxeno, ibuprofeno, diclofenaco y los antibióticos pueden aumentar el riesgo de sangrado o muerte'),
                          trailing: Icon(
                            Icons.medication,
                            color: Colors.teal,
                            size: 40,
                          ),
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
