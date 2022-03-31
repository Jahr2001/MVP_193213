import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mvp/main.dart';
import 'package:mvp/src/styles/colors/colors_view.dart';
import 'package:mvp/src/widgets/ContentOnBoarding.dart';
import 'package:mvp/src/widgets/w_headers.dart';

class OnBoarding extends StatefulWidget {
  const OnBoarding({Key? key}) : super(key: key);

  @override
  State<OnBoarding> createState() => _OnBoardingState();
}

class _OnBoardingState extends State<OnBoarding> {
  int pages = 0;
  PageController controller = PageController();

  List<Map<String, String>> onBoardingDatas = [
    {
      "text": "ESPARCIMIENTO",
      "text1": "Brindamos todos los servicios para consentir a tu mascota",
      "image": "assets/images/B1.png"
    },
    {
      "text": "ADOPCIÓN",
      "text1": "Brindamos todos los servicios para consentir",
      "image": "assets/images/B2.png"
    },
    {
      "text": "HOSPITALIDAD",
      "text1": "Brindamos todos los servicios para consentir",
      "image": "assets/images/B3.png"
    },
    {
      "text": "VETERINARIA",
      "text1": "Brindamos todos los servicios para consentir",
      "image": "assets/images/B4.png"
    },
    {
      "text": "TIENDA",
      "text1": "Brindamos todos los servicios para consentir a tu mascota",
      "image": "assets/images/B5.png"
    }
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          color: Colors.white,
          child: SizedBox(
            width: double.infinity,
            child: Column(
              children: <Widget>[
                Expanded(
                  flex: 4,
                  child: PageView.builder(
                    controller: controller,
                    onPageChanged: (value) {
                      setState(() {
                        pages = value;
                      });
                    },
                    itemCount: onBoardingDatas.length,
                    itemBuilder: (context, index) {
                      return ContentBoarding(
                          text: onBoardingDatas[index]['text']!,
                          text1: onBoardingDatas[index]['text1']!,
                          image: onBoardingDatas[index]['image']!);
                    },
                  ),
                ),
                Expanded(
                  flex: 2,
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(20, 10, 20, 20),
                    child: Column(
                      children: <Widget>[
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: List.generate(
                            onBoardingDatas.length,
                            (index) => newMethod(index: index),
                          ),
                        ),

                        //Esta es un boton
                        const Padding(padding: EdgeInsets.only(top: 100)),

                        SizedBox(
                          width: 400,
                          height: 50,
                          child: _button(indexAll: onBoardingDatas.length - 1),
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  ElevatedButton _button({required int indexAll}) {
    return ElevatedButton(
      onPressed: () {
        pages == onBoardingDatas.length - 1
            ? Navigator.pushReplacementNamed(context, 'progress')
            : controller.nextPage(
                duration: const Duration(milliseconds: 150),
                curve: Curves.easeIn,
              );
      },
      child: Text(
        // 'Siguiente',
        pages == onBoardingDatas.length - 1 ? 'Continuar' : 'Siguiente',
        style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
            color: pages == indexAll
                ? ColorSelect.btnBackgroundBo1
                : Colors.black),
      ),
      style: ElevatedButton.styleFrom(
        onPrimary: Colors.blue,
        side: BorderSide(
            color:
                pages == indexAll ? Colors.transparent : ColorSelect.txtBoSubHe,
            width: 3),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(40)),
        primary: pages == indexAll
            ? ColorSelect.btnBackgroundBo2
            : ColorSelect.btnBackgroundBo1,
      ),
    );
  }

  AnimatedContainer newMethod({required int index}) {
    return AnimatedContainer(
      margin: const EdgeInsets.only(right: 8),
      duration: kThemeAnimationDuration,
      // color: pages == index ? ColorSelect.paginatorNext : ColorSelect.txtBoHe,
      decoration: BoxDecoration(
          // color: ColorSelect.txtBoSubHe,
          color:
              pages == index ? ColorSelect.paginatorNext : ColorSelect.txtBoHe,
          borderRadius: BorderRadius.circular(3)),
      height: 4,
      width: pages == index ? 20 : 12,
    );
  }
}
