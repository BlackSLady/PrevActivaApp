import 'package:flutter/material.dart';
import 'package:projects/views/home.dart';
import 'dart:ui';
import 'package:projects/views/register.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  bool passToggle = true;
  bool? isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/bg/tealbg.png'),
            fit: BoxFit.cover,
            colorFilter: ColorFilter.mode(Color(0xff8DD2CA), BlendMode.overlay),
          ),
        ),
        alignment: Alignment.center,
        child: Container(
          height: 420,
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
              child: Padding(
                padding: const EdgeInsets.all(25),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Spacer(),
                    const Center(
                      child: TextUtil(
                        text: "Iniciar sesión",
                        weight: true,
                        size: 30,
                      ),
                    ),
                    const Spacer(
                      flex: 1,
                    ),
                    const SizedBox(
                      height: 18.0,
                    ),
                    TextFormField(
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
                    ),
                    const Spacer(),
                    Row(
                      children: [
                        Checkbox(
                          side: const BorderSide(color: Colors.white),
                          activeColor: const Color(0xff4dccc7),
                          value: isChecked,
                          onChanged: (bool? value) {
                            setState(
                              () {
                                isChecked = value;
                              },
                            );
                          },
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        const Expanded(
                          child: TextUtil(
                            text: "Recordar contraseña",
                            size: 12,
                            weight: true,
                          ),
                        )
                      ],
                    ),
                    const Spacer(),
                    ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute<void>(
                            builder: (BuildContext context) => const Home(),
                          ),
                        );
                      },
                      style: ElevatedButton.styleFrom(
                        shape: const RoundedRectangleBorder(),
                        minimumSize: const Size.fromHeight(43),
                        backgroundColor: const Color(0xff4dccc7),
                        foregroundColor: Colors.white,
                      ),
                      child: const Text('Iniciar sesión'),
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
                            text: "¿No tienes una cuenta?",
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
                                    const Register(),
                              ),
                            );
                          },
                          child: const Expanded(
                            child: TextUtil(
                              text: "Registrarse",
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
    );
  }
}

class TextUtil extends StatelessWidget {
  final String text;
  final Color? color;
  final double? size;
  final bool? weight;
  const TextUtil(
      {super.key, required this.text, this.size, this.color, this.weight});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
          color: color ?? Colors.white,
          fontSize: size ?? 16,
          fontWeight: weight == null ? FontWeight.w600 : FontWeight.w700),
    );
  }
}
