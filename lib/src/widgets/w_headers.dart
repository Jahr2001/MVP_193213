// import 'package:flutter/material.dart';

// class WHeaders1 extends StatelessWidget {
//   const WHeaders1({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       height: 500,
//       color: Colors.amber,
//     );
//   }
// }

// class WHeaders2 extends StatelessWidget {
//   const WHeaders2({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       height: 500,
//       decoration: const BoxDecoration(
//           color: Colors.amber,
//           borderRadius: BorderRadius.only(
//               bottomLeft: Radius.circular(40),
//               bottomRight: Radius.circular(40))),
//     );
//   }
// }

// class WHeaders3 extends StatelessWidget {
//   const WHeaders3({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Transform.rotate(
//       angle: -0.15,
//       child: Container(
//         color: Colors.amber,
//         height: 500,
//         width: double.infinity,
//       ),
//     );
//   }
// }

// class WHeaders4 extends StatelessWidget {
//   const WHeaders4({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       height: double.infinity,
//       width: double.infinity,
//       child: CustomPaint(
//         painter: _HeaderPainter(),
//       ),
//     );
//   }
// }

// class _HeaderPainter extends CustomPainter {
//   @override
//   void paint(Canvas canvas, Size size) {
//     const textStyle = TextStyle(color: Colors.black, fontSize: 30);
//     const textSpan = TextSpan(text: 'Hola Mundo con canvas', style: textStyle);
//     final textPainter =
//         TextPainter(text: textSpan, textDirection: TextDirection.ltr);

//     textPainter.layout(minWidth: 0, maxWidth: size.width);

//     final xCenter = (size.width - textPainter.width) * 0.25;
//     final yCenter = (size.height - textPainter.height) * 0.25;

//     final offset = Offset(xCenter, yCenter);

//     final paint = Paint();
//     paint.color = Colors.amber;
//     paint.style = PaintingStyle.stroke; //RELLENO
//     paint.strokeWidth = 20;

//     final path = Path();
//     path.moveTo(0, size.height * 0.5);

//     path.lineTo(size.width, size.height * 0.5);

//     canvas.drawPath(path, paint);
//     textPainter.paint(canvas, offset);
//   }

//   @override
//   bool shouldRepaint(covariant CustomPainter oldDelegate) {
//     return true;
//   }
// }

import 'package:flutter/material.dart';

class WHeaders1 extends StatelessWidget {
  const WHeaders1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 500,
      color: Colors.amber,
    );
  }
}

class WHeaders2 extends StatelessWidget {
  const WHeaders2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 500,
      decoration: const BoxDecoration(
          color: Colors.amber,
          borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(40),
              bottomRight: Radius.circular(40))),
    );
  }
}

class WHeaders3 extends StatelessWidget {
  const WHeaders3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Transform.rotate(
      angle: -0.15,
      child: Container(
        width: double.infinity,
        height: 500,
        color: Colors.amber,
      ),
    );
  }
}

class WHeaders4 extends StatelessWidget {
  const WHeaders4({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      width: double.infinity,
      child: CustomPaint(
        painter: _HeaderPainter(),
      ),
    );
  }
}

class WHeaders5 extends StatelessWidget {
  const WHeaders5({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      width: double.infinity,
      child: CustomPaint(
        painter: _HeaderPainter2(),
      ),
    );
  }
}

class WHeaders6 extends StatelessWidget {
  const WHeaders6({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      // margin: const EdgeInsets.only(top: 0),
      height: double.infinity,
      width: double.infinity,
      child: CustomPaint(
        painter: _HeaderPainter3(),
      ),
    );
  }
}

class WHeaders7 extends StatelessWidget {
  const WHeaders7({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      width: double.infinity,
      child: CustomPaint(
        painter: _HeaderPainter4(),
      ),
    );
  }
}

class _HeaderPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    const textStyle = TextStyle(color: Colors.black, fontSize: 30);

    const textSpan = TextSpan(text: 'Hola mundo canvas', style: textStyle);

    final textPainter =
        TextPainter(text: textSpan, textDirection: TextDirection.ltr);

    textPainter.layout(minWidth: 0, maxWidth: size.width);

    final xCenter = (size.width - textPainter.width) * 0.5;
    final yCenter = (size.height - textPainter.height) * 0.25;

    final offset = Offset(xCenter, yCenter);

    final paint = Paint();
    paint.color = Colors.amber;
    paint.style = PaintingStyle.fill;
    paint.strokeWidth = 20;

    final path = Path();
    path.moveTo(0, size.height * 0.5);

    path.lineTo(size.width, size.height * 0.3);
    path.lineTo(size.width, 0);
    path.lineTo(0, 0);

    canvas.drawPath(path, paint);
    textPainter.paint(canvas, offset);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}

class _HeaderPainter2 extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    const textStyle = TextStyle(
      color: Colors.black,
      fontSize: 30,
    );
    const textSpan = TextSpan(text: 'TEXTO', style: textStyle);

    final textPainter =
        TextPainter(text: textSpan, textDirection: TextDirection.ltr);

    textPainter.layout(minWidth: 0, maxWidth: size.width);

    final xCenter = (size.width - textPainter.width) * 0.5;
    final yCenter = (size.height - textPainter.height) * 0.25;
    final offset = Offset(xCenter, yCenter);

    final paint = Paint();
    paint.color = Colors.amber;
    paint.style = PaintingStyle.fill;
    paint.strokeWidth = 20;

    final path = Path();

    path.lineTo(size.width * 0.5, size.height * 0.5);
    path.lineTo(size.width, 0);

    canvas.drawPath(path, paint);
    textPainter.paint(canvas, offset);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}

class _HeaderPainter3 extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    const textStyle = TextStyle(
      color: Colors.black,
      fontSize: 30,
    );
    const textSpan = TextSpan(
      text: "TEXT",
      style: textStyle,
    );
    final textPainter =
        TextPainter(text: textSpan, textDirection: TextDirection.ltr);
    textPainter.layout(minWidth: 0, maxWidth: size.width);
    final xCenter = (size.width - textPainter.width) * 0.1;
    final yCenter = (size.height + textPainter.height) * 0.05;
    final offset = Offset(xCenter, yCenter);

    final paint = Paint();
    paint.color = Colors.amber;
    paint.style = PaintingStyle.fill;
    paint.strokeWidth = 20;
    final path = Path();
    path.moveTo(0, size.height * 1);
    path.lineTo(size.width, 0);
    path.lineTo(0, 0);

    canvas.drawPath(path, paint);
    textPainter.paint(canvas, offset);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}

class _HeaderPainter4 extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    const textStyle = TextStyle(color: Colors.black, fontSize: 15);

    const textSpan = TextSpan(text: 'TEXT_1', style: textStyle);

    final textPainter =
        TextPainter(text: textSpan, textDirection: TextDirection.ltr);

    textPainter.layout(minWidth: 0, maxWidth: size.width);

    const textSpan2 = TextSpan(text: 'TEXT_2', style: textStyle);

    final textPainter2 =
        TextPainter(text: textSpan2, textDirection: TextDirection.ltr);

    textPainter2.layout(minWidth: 0, maxWidth: size.width);

    final xCenter = (size.width - textPainter.width) * 0.2;
    final yCenter = (size.height - textPainter.height) * 0.05;
    final xCenter2 = (size.width - textPainter.width) * 0.8;
    final yCenter2 = (size.height - textPainter.height) * 0.05;

    final offset = Offset(xCenter, yCenter);
    final offset2 = Offset(xCenter2, yCenter2);

    final paint = Paint();
    paint.color = Colors.amber;
    paint.style = PaintingStyle.fill;
    paint.strokeWidth = 20;

    final path = Path();
    path.moveTo(0, 0);

    path.lineTo(size.width * 0.25, size.height * 0.2);
    path.lineTo(size.width * 0.5, 0);

    path.lineTo(size.width * 0.75, size.height * 0.2);

    path.lineTo(size.width * 1, 0);

    canvas.drawPath(path, paint);
    textPainter.paint(canvas, offset);
    textPainter2.paint(canvas, offset2);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
