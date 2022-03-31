import 'package:flutter/material.dart';
import 'package:mvp/src/pages/ProgressView.dart';
import 'package:mvp/src/pages/home.dart';
import 'package:mvp/src/pages/login.dart';
import 'package:mvp/src/pages/register.dart';
import 'package:mvp/src/pages/recover_password.dart';
import 'package:mvp/src/splash/splas_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        // debugShowCheckedModeBanner: true,
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
            // primarySwatch: Colors.blue,
            ),
        initialRoute: 'splash',
        routes: {
          'splash': (BuildContext context) => SplasView(),
          'home': (BuildContext context) => MyHomePage(),
          'login': (BuildContext context) => Login(),
          'progress': (BuildContext context) => ProgressView(),
          'register': (BuildContext context) => Register(),
          'recover': (BuildContext context) => RecoverPassword()
        });
  }
}
