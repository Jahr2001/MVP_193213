import 'package:flutter/material.dart';
import 'package:mvp/src/styles/colors/colors_view.dart';

class RecoverPassword extends StatefulWidget {
  const RecoverPassword({Key? key}) : super(key: key);

  @override
  State<RecoverPassword> createState() => _RecoverPasswordState();
}

class _RecoverPasswordState extends State<RecoverPassword> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        // elevation: null,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(
            Icons.arrow_back,
            color: ColorSelect.paginatorNext,
          ),
        ),
        title: const Text("Recuperar contraseña"),
        iconTheme: const IconThemeData(color: ColorSelect.paginatorNext),
        actions: [
          Container(
            child: Image.asset('assets/images/splash.png'),
            height: 60,
            // width: 170,
            // padding: const EdgeInsets.only(left: 90),
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
                margin: const EdgeInsets.only(bottom: 20, top: 15, right: 20),
                // padding: const EdgeInsets.only(right: 1),
                child: const Text(
                  'Ingresa tu email para restablecer tu contraseña',
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                    color: ColorSelect.txtBoSubHe,
                  ),
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
                margin: const EdgeInsets.only(right: 10, left: 10),
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
                margin: const EdgeInsets.only(left: 20, top: 10),
                alignment: Alignment.centerLeft,
                child: const Text(
                  'Ingrese su correo electronico registrado y le \nenviaremos un correo electrónico que contiene un \nenlace para restablecer su contraseña.',
                  style: TextStyle(color: ColorSelect.txtBoSubHe, fontSize: 15),
                ),
              ),
              Container(
                padding: const EdgeInsets.only(top: 350, bottom: 40),
                child: SizedBox(
                  width: size.width - 60,
                  height: 50,
                  child: ElevatedButton(
                    onPressed: () {},
                    child: const Text(
                      'Enviar Solicitud',
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
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
            ],
          ),
        ),
      ),
    );
  }
}
