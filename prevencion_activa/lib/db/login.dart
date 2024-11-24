import 'package:apps/db/reg.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
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
  final _formKey = GlobalKey<FormState>();
  bool passToggle = true;


  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(
        statusBarBrightness: Brightness.dark,
        systemNavigationBarDividerColor: Colors.transparent,
        systemNavigationBarColor: Colors.transparent,
        systemNavigationBarIconBrightness: Brightness.light,
      ),
    );

    SystemChrome.setEnabledSystemUIMode(SystemUiMode.edgeToEdge);

    return Scaffold(
      backgroundColor: const Color(0xffDFEDEC),
      body: Form(
        key: _formKey,
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
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 65.0),
                          child: Image.asset(
                            'assets/logoApp_PA.png',
                            scale: 40,
                          ),
                        ),
                        TextFormField(
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
                            prefixIcon: Icon(
                              Icons.email,
                              color: Color(0xff8DD2CA),
                            ),
                          ),
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Ingrese su correo electrónico';
                            }
                            if(!value.contains("@")){
                              //email.clear();
                              return 'Correo no válido';
                            }


                            return null;
                          },
                        ),
                        const SizedBox(
                          height: 8.0,
                        ),
                        TextFormField(
                          obscureText: passToggle,
                          decoration: InputDecoration(
                            labelText: 'Contraseña',
                            labelStyle: const TextStyle(color: Colors.black45),
                            filled: true,
                            enabledBorder: const OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Color(0xff8DD2CA),
                              ),
                              borderRadius: BorderRadius.all(
                                Radius.circular(13.0),
                              ),
                            ),
                            border: const OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Color(0xff8DD2CA),
                              ),
                            ),
                            fillColor: const Color(0xffF3F4F5),
                            prefixIcon: const Icon(
                              Icons.lock,
                              color: Color(0xff8DD2CA),
                            ),
                            suffix: InkWell(
                              onTap: () {
                                setState(
                                  () {
                                    passToggle = !passToggle;
                                  },
                                );
                              },
                              child: Icon(
                                passToggle
                                    ? Icons.visibility_off
                                    : Icons.visibility,
                                color: Color(0xff8DD2CA),
                              ),
                            ),
                          ),
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Ingrese una contraseña';
                            }
                            return null;
                          },
                        ),
                        const SizedBox(
                          height: 10.0,
                        ),
                        ElevatedButton(
                          onPressed: () {
                            if (_formKey.currentState!.validate()) {
                              Navigator.push(
                                context,
                                MaterialPageRoute<void>(
                                  builder: (BuildContext context) =>
                                      const App(),
                                ),
                              );
                            }
                          },
                          style: ElevatedButton.styleFrom(
                            shape: const RoundedRectangleBorder(),
                            minimumSize: const Size.fromHeight(43),
                            backgroundColor: const Color(0xff6577DC),
                            foregroundColor: Colors.white,
                          ),
                          child: const Text('Iniciar sesión'),
                        ),
                        TextButton(
                            onPressed: () {},
                            child: const Text('¿Olvidaste tu contraseña?')),
                        const Divider(height: 80, color: Colors.transparent),
                        const SizedBox(
                          height: 0.0,
                        ),
                        const Text('¿No tienes una cuenta?'),
                        ElevatedButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute<void>(
                                  builder: (BuildContext context) =>
                                      const Register(),
                                ),
                              );
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
      ),
    );
  }
}
