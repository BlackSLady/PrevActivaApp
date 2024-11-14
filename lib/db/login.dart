import 'package:apps/db/reg.dart';
import 'package:flutter/material.dart';
import '../src/app.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Prevención Activa',
      theme: ThemeData(useMaterial3: true),
      home: const Home(),
    );
  }
}

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffDFEDEC),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(40.0),
            child: Column(
              children: <Widget>[
                SizedBox(
                  height: 700,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 65.0),
                        child: Image.asset(
                          'assets/logoApp_PA.png',
                          scale: 40,
                        ),
                      ),
                      const TextField(
                        decoration: InputDecoration(
                          labelText: 'Correo',
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
                      const SizedBox(
                        height: 8.0,
                      ),
                      const TextField(
                        obscureText: true,
                        decoration: InputDecoration(
                          labelText: 'Contraseña',
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
                        //hintText: 'Contraseña',
                      ),
                      const SizedBox(
                        height: 10.0,
                      ),
                      ElevatedButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute<void>(
                                  builder: (BuildContext context) =>
                                      const App(),
                                ));
                          },
                          style: ElevatedButton.styleFrom(
                            shape: const RoundedRectangleBorder(),
                            minimumSize: const Size.fromHeight(43),
                            backgroundColor: const Color(0xff6577DC),
                            foregroundColor: Colors.white,
                          ),
                          child: const Text('Iniciar sesión')),
                      TextButton(
                          onPressed: () {},
                          child: const Text('¿Olvidaste tu contraseña?')),
                      const Divider(height: 80, color: Colors.transparent),
                      const SizedBox(
                        height: 0.0,
                      ),
                      TextButton(
                          onPressed: () {},
                          child: const Text('¿No tienes una cuenta?')),
                      ElevatedButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute<void>(
                                  builder: (BuildContext context) =>
                                      const Register(),
                                ));
                          },
                          style: ElevatedButton.styleFrom(
                            minimumSize: const Size.fromHeight(43),
                            side: const BorderSide(color: Colors.deepPurple),
                            shape: const RoundedRectangleBorder(),
                            backgroundColor: const Color(0xffDFEDEC),
                            //foregroundColor: Colors.white,
                          ),
                          child: const Text('Crear cuenta nueva')),
                      const Divider(height: 40, color: Colors.transparent),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
