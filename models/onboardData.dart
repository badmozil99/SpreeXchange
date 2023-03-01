import 'package:flutter/material.dart';

class Onboard{
  Onboard({
    required this.image,
    required this.description,
    required this.text,
  });

  final String image;
  final String description;
  final String text;

}

final List<Onboard> onboardData = [
  Onboard(
      image: 'images/phoneLogo.png',
      description: 'Trade with us to Enjoy a better',
      text: 'Xperience'
  ),
  Onboard(
      image: 'images/wallet.png',
      description: 'Your assets are safe with us',
      text: '  '
  ),

  Onboard(
      image: 'images/tick1.png',
      description: 'Secure,Fast & Reliable',
      text: 'Best rate'
  ),
];







class onboardingContent extends StatelessWidget {
  onboardingContent({

    required this.image,
    required this.description,
    required this.text,
  });


  final String image;
  final String description;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset(
          'images/spreeLogo.png',
          height: 100.0,
          width: 100.0,
        ),
        SizedBox(height: 10.0),
        Text(
          "Spree Xchange",
          style: TextStyle(
              fontSize: 35.0,
              fontWeight: FontWeight.w500,
              color: Color(0xff3f72d7)
          ),
        ),
        SizedBox(height: 30.0),
        Image.asset(
          image,
          height: 228.0,
          width: 202.0,
        ),
        SizedBox(height: 10.0),
        Text(
          description,
          textAlign: TextAlign.center,
          style: TextStyle(
              fontWeight: FontWeight.w500,
              fontSize: 20.0,
              color: Color(0xff3f72d7),
              letterSpacing: -0.2
          ),
        ),
        Text(
          text,
          textAlign: TextAlign.center,
          style: TextStyle(
              fontWeight: FontWeight.w700,
              fontSize: 20.0,
              color: Color(0xff3f72d7),
              letterSpacing: -0.2
          ),
        )
      ],
    );
  }
}



//
// TextButton(
// onPressed: (){},
//
// style: ButtonStyle(
// fixedSize: MaterialStateProperty.all(Size(158.0,44.0)),
// foregroundColor: MaterialStateProperty.all(Color(0xff333333)),
// backgroundColor: MaterialStateProperty.all(Color(0xffFFFFFF)),
// shape: MaterialStateProperty.all<RoundedRectangleBorder>(
// RoundedRectangleBorder(
// borderRadius: BorderRadius.circular(10.0),
// side: BorderSide(
// color: Color(0xff333333)
// )
// ),
// )
// ),
// child: Text(
// 'Login',
// style: TextStyle(
// fontSize: 20.0,
// letterSpacing: 1.0
// ),
// ),
// )