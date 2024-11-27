import 'package:apps/db/login.dart';
//import 'package:apps/views/home_page.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class Register extends StatefulWidget {
  const Register({super.key});

  @override
  State<StatefulWidget> createState() => _RegState();
}

class _RegState extends State<Register> {
  final _formKey = GlobalKey<FormState>();
  bool passToggle = true;

  final user = TextEditingController();
  final email = TextEditingController();
  final password = TextEditingController();

  String usr = '';
  String eml = '';
  String pswd = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffDFEDEC),
      body: Form(
        key: _formKey,
        child: Center(
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(40.0),
              child: Column(
                children: <Widget>[
                  SizedBox(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        const Padding(
                          padding: EdgeInsets.symmetric(vertical: 65.0),
                          child: Text(
                            'Bienvenido',
                            style: TextStyle(
                                color: Color(0xff43CFBE),
                                fontFamily: 'Futura',
                                fontSize: 40,
                                fontWeight: FontWeight.w900),
                          ),
                        ),
                        const SizedBox(
                          height: 0.0,
                        ),
                        TextFormField(
                          controller: user,
                          decoration: InputDecoration(
                            labelText: 'Nombre completo',
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
                            prefixIcon: const Icon(
                              Icons.person,
                              color: Color(0xff8DD2CA),
                            ),
                          ),
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Ingrese su nombre completo';
                            }
                            return null;
                          },
                        ),
                        const SizedBox(
                          height: 8.0,
                        ),
                        TextFormField(
                          controller: email,
                          decoration: InputDecoration(
                            labelText: 'Correo electrónico',
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
                            prefixIcon: const Icon(
                              Icons.email,
                              color: Color(0xff8DD2CA),
                            ),
                          ),
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Ingrese su correo electrónico';
                            }
                            if (!value.contains("@")) {
                              email.clear();
                              return 'Correo no válido';
                            }
                            return null;
                          },
                        ),
                        const SizedBox(
                          height: 8.0,
                        ),
                        TextFormField(
                          controller: password,
                          obscureText: passToggle,
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
                          height: 8.0,
                        ),
                        TextFormField(
                          obscureText: passToggle,
                          decoration: InputDecoration(
                            labelText: 'Confirmar contraseña',
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
                            if (value != password.text) {
                              return 'Las contraseñas deben coincidir';
                            }
                            return null;
                          },
                        ),
                        const SizedBox(
                          height: 8.0,
                        ),
                        TextFormField(
                          decoration: InputDecoration(
                            labelText: 'Número de teléfono',
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
                            prefixIcon: const Icon(
                              Icons.phone,
                              color: Color(0xff8DD2CA),
                            ),
                          ),
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Ingrese un número de teléfono';
                            }
                            return null;
                          },
                        ),
                        const SizedBox(
                          height: 15.0,
                        ),
                        RichText(
                          text: TextSpan(
                            text:
                                'Al registrarte estás de acuerdo con nuestros ',
                            style: const TextStyle(
                                color: Colors.black54, fontSize: 12),
                            children: [
                              TextSpan(
                                mouseCursor: SystemMouseCursors.click,
                                text: 'Términos y condiciones',
                                style: const TextStyle(color: Colors.teal),
                                recognizer: TapGestureRecognizer()
                                  ..onTap = () {},
                              ),
                              const TextSpan(text: ' y '),
                              //style: TextStyle(color: Colors.black54)),
                              TextSpan(
                                mouseCursor: SystemMouseCursors.click,
                                text: 'Políticas de privacidad',
                                style: const TextStyle(color: Colors.teal),
                                recognizer: TapGestureRecognizer()
                                  ..onTap = () {},
                              )
                            ],
                          ),
                        ),
                        const SizedBox(
                          height: 30.0,
                        ),
                        ElevatedButton(
                          onPressed: () {
                            if (_formKey.currentState!.validate()) {
                              usr = user.text;
                              eml = email.text;
                              pswd = password.text;
                              Navigator.push(
                                context,
                                MaterialPageRoute<void>(
                                  builder: (BuildContext context) => Login(),
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
                          child: const Text('Registrar'),
                        ),
                        const Divider(height: 80, color: Colors.transparent),
                        const SizedBox(
                          height: 0.0,
                        ),
                        const Text('¿Ya tienes una cuenta?'),
                        ElevatedButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute<void>(
                                  builder: (BuildContext context) => Login(),
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
                            child: const Text('Iniciar Sesión')),
                        //const Divider(height: 40, color: Colors.transparent),
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

