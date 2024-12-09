import 'dart:ui';
import 'package:flutter/material.dart';
import 'login.dart';

class Register extends StatefulWidget {
  const Register({super.key});

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  bool? isChecked = false;
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
      body: Form(
        key: _formKey,
        child: Container(
          height: double.infinity,
          width: double.infinity,
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/bg/tealbg.png'),
              fit: BoxFit.cover,
              colorFilter:
                  ColorFilter.mode(Color(0xff8DD2CA), BlendMode.overlay),
            ),
          ),
          alignment: Alignment.center,
          child: Container(
            height: 580,
            width: double.infinity,
            margin: const EdgeInsets.symmetric(horizontal: 30),
            decoration: BoxDecoration(
              border: Border.all(color: Colors.white),
              borderRadius: BorderRadius.circular(15),
              color: Colors.black.withOpacity(0.1),
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: BackdropFilter(
                filter: ImageFilter.blur(sigmaY: 5, sigmaX: 5),
                child: Container(
                  padding: const EdgeInsets.all(15),
                  width: MediaQuery.of(context).size.width,
                  height: 100,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Spacer(),
                      const Center(
                        child: TextUtil(
                          text: "Registrarse",
                          weight: true,
                          size: 30,
                        ),
                      ),
                      const Spacer(),
                      const SizedBox(
                        height: 18.0,
                      ),
                      TextFormField(
                        controller: user,
                        style: const TextStyle(color: Colors.white),
                        decoration: const InputDecoration(
                          labelText: 'Nombre completo',
                          labelStyle: TextStyle(color: Colors.white),
                          filled: true,
                          fillColor: Colors.transparent,
                          //border: InputBorder.none,
                          prefixIcon: Icon(
                            Icons.person,
                            color: Color(0xff8DD2CA),
                          ),
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
                        ),
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Ingrese su nombre completo';
                          }
                          bool validName =
                              RegExp(r'[!@#<>?":_`~;[\]\\|=+)(*&^%a-z-]')
                                  .hasMatch(value);
                          if (!validName) {
                            return 'No se admiten números';
                          }
                          return null;
                        },
                      ),
                      const Spacer(),
                      const SizedBox(
                        height: 10.0,
                      ),
                      const Spacer(),
                      TextFormField(
                        controller: email,
                        style: const TextStyle(color: Colors.white),
                        decoration: const InputDecoration(
                          labelText: 'Correo',
                          labelStyle: TextStyle(color: Colors.white),
                          filled: true,
                          fillColor: Colors.transparent,
                          //border: InputBorder.none,
                          prefixIcon: Icon(
                            Icons.email,
                            color: Color(0xff8DD2CA),
                          ),
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
                        ),
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Ingrese su correo electrónico';
                          }
                          if (!value.contains("@")) {
                            //email.clear();
                            return 'Correo no válido';
                          }
                          return null;
                        },
                      ),
                      const Spacer(),
                      const SizedBox(
                        height: 10.0,
                      ),
                      const Spacer(),
                      TextFormField(
                        controller: password,
                        obscureText: passToggle,
                        style: const TextStyle(color: Colors.white),
                        decoration: InputDecoration(
                          labelText: 'Contraseña',
                          labelStyle: const TextStyle(color: Colors.white),
                          filled: true,
                          fillColor: Colors.transparent,
                          prefixIcon: const Icon(
                            Icons.lock,
                            color: Color(0xff8DD2CA),
                          ),
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
                              color: const Color(0xff8DD2CA),
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
                      const Spacer(),
                      const SizedBox(
                        height: 10.0,
                      ),
                      const Spacer(),
                      TextFormField(
                        obscureText: passToggle,
                        style: const TextStyle(color: Colors.white),
                        decoration: InputDecoration(
                          labelText: 'Confirmar contraseña',
                          labelStyle: const TextStyle(color: Colors.white),
                          filled: true,
                          fillColor: Colors.transparent,
                          prefixIcon: const Icon(
                            Icons.lock,
                            color: Color(0xff8DD2CA),
                          ),
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
                              color: const Color(0xff8DD2CA),
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
                      const Spacer(),
                      const SizedBox(
                        height: 10.0,
                      ),
                      const Spacer(),
                      ElevatedButton(
                        onPressed: () {
                          if (_formKey.currentState!.validate()) {
                            usr = user.text;
                            eml = email.text;
                            pswd = password.text;
                            Navigator.push(
                              context,
                              MaterialPageRoute<void>(
                                builder: (BuildContext context) =>
                                    const Login(),
                              ),
                            );
                          }
                        },
                        style: ElevatedButton.styleFrom(
                          shape: const RoundedRectangleBorder(),
                          minimumSize: const Size.fromHeight(43),
                          backgroundColor: const Color(0xff4dccc7),
                          foregroundColor: Colors.white,
                        ),
                        child: const Text('Registrarse'),
                      ),
                      const Spacer(),
                      const SizedBox(
                        height: 8.0,
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Center(
                            child: TextUtil(
                              text: "¿Ya tienes una cuenta?",
                              size: 12,
                              weight: true,
                            ),
                          ),
                          TextButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute<void>(
                                  builder: (BuildContext context) =>
                                      const Login(),
                                ),
                              );
                            },
                            child: const Expanded(
                              child: TextUtil(
                                text: "Iniciar sesión",
                                size: 12,
                                weight: true,
                                color: Colors.tealAccent,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
