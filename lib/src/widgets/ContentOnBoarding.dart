import 'package:flutter/material.dart';
import 'package:mvp/src/styles/colors/colors_view.dart';

class ContentBoarding extends StatelessWidget {
  const ContentBoarding({
    Key? key,
    required this.text,
    required this.text1,
    required this.image,
  }) : super(key: key);

  final String text, text1, image;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start, //cam
      children: <Widget>[
        // const Divider(),

        Image.asset(
          // image!,
          image,
          width: 290,
          height: 290,
        ),
        Text(
          // text!,
          text,
          style: const TextStyle(color: ColorSelect.txtBoHe, fontSize: 21),
        ),
        Padding(
          padding: const EdgeInsets.all(20),
          child: Text(
            // text1!,
            text1,
            textAlign: TextAlign.center,
            style: const TextStyle(
              fontSize: 15,
              color: ColorSelect.txtBoSubHe,
            ),
          ),
        )
      ],
    );
  }
}
