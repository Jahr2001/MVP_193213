import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:mvp/src/styles/colors/colors_view.dart';

class MyHomePage extends StatefulWidget {
  // const MyHomePage({Key? key, required this.title}) : super(key: key);
  const MyHomePage({Key? key}) : super(key: key);

  // final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0xffffffff),
        // appBar: AppBar(
        //     centerTitle: true,
        //     title: Text(widget.title),
        //     ),
        body: Center(
          child: Column(
            children: [
              Container(
                  margin: const EdgeInsets.only(top: 50, left: 24, right: 24),
                  height: 150,
                  child: Image.asset('assets/images/splash.png')
                  // decoration: const BoxDecoration(
                  //   image: DecorationImage(
                  //       image: NetworkImage(
                  //           "https://cdn.pixabay.com/photo/2012/05/07/04/39/dog-47957_960_720.png")),
                  // ),
                  ),
              Container(
                margin: const EdgeInsets.only(top: 30),
                width: 300,
                height: 48,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: const Color(0xff3169f5),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(40),
                    ),
                  ),
                  onPressed: () {},
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: const [
                      Padding(padding: EdgeInsets.only(left: 10)),
                      FaIcon(
                        FontAwesomeIcons.google,
                      ),
                      Padding(padding: EdgeInsets.only(right: 20)),
                      Text(
                        'Continuar con Google',
                        style: TextStyle(
                            fontSize: 14, fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.only(top: 30),
                width: 300,
                height: 48,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      primary: const Color(0xff324fa5),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(40))),
                  onPressed: () {},
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: const [
                      Padding(padding: EdgeInsets.only(right: 10)),
                      FaIcon(FontAwesomeIcons.facebookSquare),
                      Padding(padding: EdgeInsets.only(right: 20)),
                      // Icon(Icons.facebook),
                      Text(
                        'Continuar con Facebook',
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                        ),
                      )
                    ],
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.only(top: 30, bottom: 20),
                width: 300,
                height: 48,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      primary: Colors.white,
                      onPrimary: const Color(0xff64686f),
                      side:
                          const BorderSide(color: Color(0xff64686f), width: 3),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(40))),
                  onPressed: () {
                    Navigator.pushNamed(context, 'register');
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: const [
                      Padding(padding: EdgeInsets.only(right: 10)),
                      Icon(Icons.mail),
                      Padding(padding: EdgeInsets.only(right: 20)),
                      Text(
                        'Registrarse con e-mail',
                        style: TextStyle(
                            fontSize: 14, fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.only(top: 70, bottom: 0, right: 10),
                width: 300,
                height: 28,
                padding: const EdgeInsets.only(top: 0),
                child: TextButton(
                  onPressed: () {},
                  child: const Text(
                    'Entrar como invitado',
                    style: TextStyle(
                      fontSize: 14,
                      color: ColorSelect.paginatorNext,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              Container(
                width: 300,
                height: 28,
                padding: const EdgeInsets.only(top: 0),
                child: TextButton(
                  onPressed: () {},
                  child: const Text(
                    'Entrar como vendedor',
                    style: TextStyle(
                      fontSize: 14,
                      color: Color(0xff76aa75),
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.only(top: 70, bottom: 10),
                // width: 300,
                // height: 48,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      '¿Ya tienes una cuenta?',
                      style: TextStyle(
                        fontSize: 13,
                        color: Color(0xff64686f),
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    TextButton(
                        onPressed: () {
                          Navigator.pushNamed(context, 'login');
                        },
                        child: Row(
                          children: const [
                            Text(
                              'Iniciar sesión',
                              style: TextStyle(
                                fontSize: 14,
                                color: ColorSelect.paginatorNext,
                                fontWeight: FontWeight.bold,
                              ),
                            )
                          ],
                        ))
                  ],
                ),
              ),
            ],
          ),
        ));
  }
}
