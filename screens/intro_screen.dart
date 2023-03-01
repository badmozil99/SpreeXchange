import 'package:flutter/material.dart';

class IntroScreen extends StatefulWidget {


  @override
  State<IntroScreen> createState() => _IntroScreenState();
}

class _IntroScreenState extends State<IntroScreen> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.only(left: 40.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.only(right: 30.0),
                child: Column(
                  children: [
                    Container(
                      height: 100.0,
                      width: 100.0,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage(
                            'images/spreeLogo.png',
                          ),
                          fit: BoxFit.contain
                        )
                      ),
                      ),
                    SizedBox(height: 10.0),
                    Text('Spree-Xchange',
                    style: TextStyle(
                      fontSize: 35.0,
                      fontWeight: FontWeight.w500,
                      color: Color(0xff3f72d7),
                    ),
                    ),

                    Padding(
                      padding: EdgeInsets.only(top: 40.0),
                      child: Container(
                        height: 228.0,
                        width: 202.0,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage('images/phoneLogo.png'),
                            fit: BoxFit.contain
                          )
                        ),
                      ),
                    ),
                    SizedBox(height: 13.0),

                    Text(
                      'Trade with us to enjoy a better',
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 20.0,
                        color: Color(0xff3f72d7)
                      ),
                    ),
                    Text(
                      'Xperience',
                      style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 20.0,
                          color: Color(0xff3f72d7)
                      ),
                    ),
                  ],
                ),
              ),

              Padding(
                padding: EdgeInsets.only(top: 100.0),
                child: Row(
                  children: [
                    TextButton(
                      onPressed: (){},
                      style: TextButton.styleFrom(
                          primary: Color(
                              0xffFFFFFF
                          ),
                          backgroundColor: Color(0xff3f72d7),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10.0)
                          ),
                          fixedSize: Size(158.0,44.0)
                      ),
                      child: Text(
                        'Get started',
                        style: TextStyle(
                            fontSize: 20.0,
                            letterSpacing: 1
                        ),
                      ),
                    ),
                    SizedBox(width: 19.0),

                  ],
                ),
              )
            ],
          ),
        ),
      )
    );
  }
}

