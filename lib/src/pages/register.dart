import 'package:flutter/material.dart';
import 'package:mvp/src/styles/colors/colors_view.dart';

class Register extends StatefulWidget {
  const Register({Key? key}) : super(key: key);

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  bool _obscure = true;
  bool _accept = false;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(
            Icons.arrow_back,
            color: ColorSelect.paginatorNext,
          ),
        ),
        title: const Text("Regístrate"),
        iconTheme: const IconThemeData(color: ColorSelect.paginatorNext),
        actions: [
          Container(
            child: Image.asset('assets/images/splash.png'),
            height: 60,
            width: 170,
            padding: const EdgeInsets.only(left: 90),
          )
        ],
        backgroundColor: ColorSelect.txtBoHe,
      ),
      body: Container(
        padding: const EdgeInsets.only(right: 10, left: 10),
        width: size.width,
        height: size.height,
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                margin: const EdgeInsets.only(bottom: 20, top: 30),
                padding: const EdgeInsets.only(right: 1),
                child: const Text(
                  'Crea una cuenta para empezar a usar la app',
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.bold,
                    color: ColorSelect.txtBoSubHe,
                  ),
                ),
              ),
              Container(
                padding:
                    const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                margin: const EdgeInsets.only(right: 305),
                child: const Text(
                  'Nombre',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 15,
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.only(right: 10, left: 10, bottom: 10),
                child: const TextField(
                  textAlign: TextAlign.left,
                  style: TextStyle(fontSize: 15),
                  autofocus: false,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(10),
                        ),
                        borderSide: BorderSide(color: Colors.black, width: 1),
                      ),
                      hintText: 'Nombre completo'),
                ),
              ),
              Container(
                padding:
                    const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                margin: const EdgeInsets.only(right: 240),
                child: const Text(
                  'Correo electrónico',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.only(right: 10, left: 10, bottom: 10),
                child: const TextField(
                  textAlign: TextAlign.left,
                  style: TextStyle(fontSize: 15),
                  autofocus: false,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(10),
                        ),
                        borderSide: BorderSide(color: Colors.black, width: 1),
                      ),
                      hintText: 'Dirección de correo'),
                ),
              ),
              Container(
                padding:
                    const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                margin: const EdgeInsets.only(right: 291),
                child: const Text(
                  'Contraseña',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.only(right: 10, left: 10),
                child: TextField(
                  obscureText: _obscure,
                  textAlign: TextAlign.left,
                  style: const TextStyle(fontSize: 15),
                  autofocus: false,
                  decoration: InputDecoration(
                      suffixIcon: IconButton(
                        icon: Icon(
                            _obscure ? Icons.visibility : Icons.visibility_off),
                        onPressed: () {
                          setState(() {
                            _obscure = !_obscure;
                          });
                        },
                      ),
                      border: const OutlineInputBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(10),
                        ),
                        borderSide: BorderSide(color: Colors.black, width: 1),
                      ),
                      hintText: 'Contraseña'),
                ),
              ),
              Container(
                padding: const EdgeInsets.only(left: 20, top: 15),
                margin: const EdgeInsets.only(right: 3),
                // alignment: Alignment
                child: const Text(
                  'La contraseña debe contener caracteres, números y simbolos con un minimo de 6 caracteres.',
                  style: TextStyle(fontSize: 15, color: ColorSelect.txtBoSubHe),
                ),
              ),
              Container(
                padding: const EdgeInsets.only(top: 18),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Checkbox(
                      value: _accept,
                      onChanged: (check) {
                        setState(() {
                          _accept = check!;
                        });
                      },
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(50)),
                    ),
                    Container(
                      alignment: Alignment.center,
                      // padding: EdgeInsets.only(left: 0, right: 20),
                      margin: const EdgeInsets.only(right: 20),
                      child: const Center(
                          child: Text.rich(TextSpan(
                              text: 'Al registrarme, acepto los',
                              style:
                                  TextStyle(fontSize: 15, color: Colors.black),
                              children: <TextSpan>[
                            TextSpan(
                              text: ' términos y \ncondiciones',
                              style: TextStyle(
                                fontSize: 15,
                                color: ColorSelect.paginatorNext,
                                // decoration: TextDecoration.underline,
                              ),
                            ),
                            TextSpan(
                                text: ' y la ',
                                style: TextStyle(
                                    fontSize: 15, color: Colors.black),
                                children: <TextSpan>[
                                  TextSpan(
                                    text: 'política de privacidad',
                                    style: TextStyle(
                                      fontSize: 15,
                                      color: ColorSelect.paginatorNext,
                                      // decoration: TextDecoration.underline,
                                    ),
                                  )
                                ])
                          ]))),
                    ),
                  ],
                ),
              ),
              Container(
                padding: const EdgeInsets.only(top: 70, bottom: 0),
                child: SizedBox(
                  width: size.width - 70,
                  height: 50,
                  child: ElevatedButton(
                    onPressed: () {},
                    child: const Text(
                      'Crear Cuenta',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 15,
                      ),
                    ),
                    style: ElevatedButton.styleFrom(
                      onPrimary: ColorSelect.btnBackgroundBo1,
                      side:
                          const BorderSide(color: Colors.transparent, width: 3),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(40)),
                      primary: ColorSelect.btnBackgroundBo2,
                    ),
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    '¿Ya tienes una cuenta?',
                    style: TextStyle(fontSize: 15),
                  ),
                  TextButton(
                    onPressed: () {
                      // Navigator.pushNamed(context, 'login');
                      Navigator.pushNamed(context, 'login');
                    },
                    child: const Text(
                      'Iniciar sesión',
                      style: TextStyle(
                          color: ColorSelect.paginatorNext, fontSize: 15),
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
