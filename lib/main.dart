import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
          // primarySwatch: Colors.blue,
          ),
      home: const MyHomePage(title: 'MVP'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

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
                decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: NetworkImage(
                          "https://cdn.pixabay.com/photo/2012/05/07/04/39/dog-47957_960_720.png")),
                ),
              ),
              Container(
                margin: const EdgeInsets.only(top: 30),
                width: 300,
                height: 48,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      primary: const Color(0xff3169f5),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(40))),
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
                margin: const EdgeInsets.only(top: 30),
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
                  onPressed: () {},
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
                  margin: const EdgeInsets.only(top: 35),
                  width: 300,
                  height: 48,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      TextButton(
                          onPressed: () {},
                          child: const Text(
                            'Entrar como invitado',
                            style: TextStyle(
                                fontSize: 13,
                                color: Color(0xfffc1460),
                                fontWeight: FontWeight.bold),
                          ))
                    ],
                  )),
              Container(
                  margin: const EdgeInsets.only(top: 5),
                  width: 300,
                  height: 48,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      TextButton(
                          onPressed: () {},
                          child: const Text(
                            'Entrar como vendedor',
                            style: TextStyle(
                                fontSize: 13,
                                color: Color(0xff76aa75),
                                fontWeight: FontWeight.bold),
                          ))
                    ],
                  )),
              Container(
                margin: const EdgeInsets.only(top: 30, bottom: 20),
                width: 300,
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
                        onPressed: () {},
                        child: Row(
                          children: const [
                            Text(
                              'Iniciar sesión',
                              style: TextStyle(
                                  fontSize: 13,
                                  color: Color(0xfffc1460),
                                  fontWeight: FontWeight.bold),
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
