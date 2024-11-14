import 'package:apps/db/login.dart';
import 'package:flutter/material.dart';

class Register extends StatefulWidget {
  const Register({super.key});

  @override
  State<StatefulWidget> createState() => _RegState();
}

class _RegState extends State<Register> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffDFEDEC),
      body: Center(
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
                      const TextField(
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
                        ),
                      ),
                      const SizedBox(
                        height: 8.0,
                      ),
                      const TextField(
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
                        ),
                      ),
                      const SizedBox(
                        height: 8.0,
                      ),
                      const TextField(
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
                      ),
                      const SizedBox(
                        height: 8.0,
                      ),
                      const TextField(
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
                        ),
                      ),
                      const SizedBox(
                        height: 15.0,
                      ),
                      RichText(
                        text: const TextSpan(
                          text: 'Al registrarte estás de acuerdo con nuestros ',
                          style: TextStyle(color: Colors.black54, fontSize: 12),
                          children: [
                            TextSpan(
                                text: 'Términos y condiciones',
                                style: TextStyle(color: Colors.teal)),
                            TextSpan(text: ' y '),
                            //style: TextStyle(color: Colors.black54)),
                            TextSpan(
                                text: 'Políticas de privacidad',
                                style: TextStyle(color: Colors.teal))
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 30.0,
                      ),
                      ElevatedButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute<void>(
                                  builder: (BuildContext context) =>
                                      const Login(),
                                ));
                          },
                          style: ElevatedButton.styleFrom(
                            shape: const RoundedRectangleBorder(),
                            minimumSize: const Size.fromHeight(43),
                            backgroundColor: const Color(0xff6577DC),
                            foregroundColor: Colors.white,
                          ),
                          child: const Text('Registrar')),
                      const Divider(height: 80, color: Colors.transparent),
                      const SizedBox(
                        height: 0.0,
                      ),
                      TextButton(
                          onPressed: () {},
                          child: const Text('¿Ya tienes una cuenta?')),
                      ElevatedButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute<void>(
                                  builder: (BuildContext context) =>
                                      const Login(),
                                ));
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
    );
  }
}
