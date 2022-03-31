import 'dart:math';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mvp/src/styles/colors/colors_view.dart';

class ProgressPainter extends CustomPainter {
  double cantPorcentaje = 0;

  ProgressPainter({required this.cantPorcentaje});

  @override
  void paint(Canvas canvas, Size size) {
    final paint = new Paint();

    paint.strokeWidth = 8;
    paint.color = ColorSelect.btnBackgroundBo2;
    paint.style = PaintingStyle.stroke;

    final width = size.width * 0.50;
    final height = size.height * 0.50;

    canvas.drawCircle(Offset(width, height), min(width, height), paint);

    final load = new Paint();
    load.strokeWidth = 8;
    load.color = ColorSelect.paginatorNext;
    load.style = PaintingStyle.stroke;
    final w = size.width * 0.50;
    final h = size.height * 0.50;

    // double porcentaje = pi * (2 * (50.0 / 100.0));
    double porcentaje = pi * 2 * (cantPorcentaje / 100);
    // canvas.drawArc(rect, 90, sweepAngle, useCenter, load)
    Rect rect = Rect.fromCircle(center: Offset(w, h), radius: w);
    canvas.drawArc(rect, -pi / 2, porcentaje, false, load);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
