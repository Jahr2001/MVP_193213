import 'dart:async';

import 'package:flutter/material.dart';
import 'package:mvp/src/painters/progressPainter.dart';

class ProgressView extends StatefulWidget {
  const ProgressView({Key? key}) : super(key: key);

  @override
  State<ProgressView> createState() => _ProgressViewState();
}

class _ProgressViewState extends State<ProgressView> {
  double porcentajeAnimacion = 0;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _animationLoad();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          color: Colors.transparent,
          width: 100,
          height: 100,
          child: CustomPaint(
            painter: ProgressPainter(cantPorcentaje: porcentajeAnimacion),
            // painter: ProgressPainter(),
          ),
        ),
      ),
    );
  }

  _animationLoad() {
    Timer.periodic(const Duration(milliseconds: 100), (timer) {
      setState(() {
        porcentajeAnimacion += 10;
        if (porcentajeAnimacion == 100) {
          Navigator.pushReplacementNamed(context, 'home');
          timer.cancel();
        }
      });
    });
  }
}
