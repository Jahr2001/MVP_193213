import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:mvp/src/pages/on_boarding.dart';

import 'dart:ui' as ui;

import 'package:mvp/src/styles/colors/colors_view.dart';

class SplasView extends StatefulWidget {
  const SplasView({Key? key}) : super(key: key);

  @override
  State<SplasView> createState() => _SplasViewState();
}

class _SplasViewState extends State<SplasView> {
  ui.Image? image;

  @override
  void initState() {
    super.initState();
    _loadImage('assets/images/splash.png');
    _toOnboarding();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SizedBox(
          child: CustomPaint(
            painter: _SplashCanvas(image),
          ),
          height: double.infinity,
          width: double.infinity,
        ),
      ),
    );
  }

  _toOnboarding() async {
    await Future.delayed(const Duration(milliseconds: 5000), () {});
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(
        builder: (context) => OnBoarding(),
      ),
    );
  }

  _loadImage(String path) async {
    final data = await rootBundle.load(path);
    final bytes = data.buffer.asUint8List();
    final image = await decodeImageFromList(bytes);

    setState(() => this.image = image);
  }
}

class _SplashCanvas extends CustomPainter {
  final ui.Image? image;
  const _SplashCanvas(this.image);

  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint();
    // paint.color = Colors.amber;
    paint.color = ColorSelect.btnBackgroundBo2;
    // paint.style = PaintingStyle.stroke;
    paint.style = PaintingStyle.fill;
    paint.strokeWidth = 5;

    final path = Path();

    path.lineTo(0, size.height * 0.10);

    path.quadraticBezierTo(size.width * 0.17, size.height * 0.20,
        size.width * 0.35, size.height * 0.12);

    path.quadraticBezierTo(size.width * 0.45, size.height * 0.07,
        size.width * 0.57, size.height * 0.11);

    path.quadraticBezierTo(
        size.width * 0.91, size.height * 0.17, size.width, size.height * 0.11);

    path.lineTo(size.width, 0);

    canvas.drawPath(path, paint);



    //Canvas a bajo
    final paint2 = Paint();

    paint2.color = ColorSelect.btnBackgroundBo2;

    paint2.style = PaintingStyle.fill;

    paint2.strokeWidth = 5;

    final path2 = Path();

    path2.lineTo(0, size.height);
    path2.quadraticBezierTo(
        size.width * 0.70, size.height * 0.80, size.width, size.height);
    path2.lineTo(size.width, size.height);
    path2.lineTo(0, size.height);

    canvas.drawPath(path2, paint2);

    canvas.scale(0.30, 0.30);

    canvas.drawImage(image!, const Offset(125 * 2.5, 320 * 3.0), paint);
    // path.lineTo(0, size.height * 0.20);
    // path.quadraticBezierTo(
    //     size.width * 0.50, size.height * 0.28, size.width, size.height * 0.20);
    // path.lineTo(size.width, 0);

    // canvas.drawPath(path, paint);

    // canvas.scale(0.24, 0.24);
    // // print(image!.width);
    // // print(image!.height);
    // // print('HOLAASSSSSSSSSSSSSSSs');
    // canvas.drawImage(image!, const Offset(190 * 2.5, 430 * 3.0), paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
