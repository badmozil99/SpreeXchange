import 'package:flutter/material.dart';
import 'package:spreexchange/screens/getstarted_screen.dart';
import 'package:spreexchange/models/onboardData.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: PageView.builder(
                  itemBuilder: (context, index) =>onboardingContent(
                    image: onboardData[index].image,
                    description: onboardData[index].description,
                    text: onboardData[index].text,
                  ),
                itemCount: onboardData.length,
                physics: BouncingScrollPhysics(),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 30.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextButton(
                    onPressed: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context) => GetStartedScreen()));
                    },
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
                  SizedBox(width: 20.0),
                  TextButton(
                    onPressed: (){

                    },

                    style: ButtonStyle(
                        fixedSize: MaterialStateProperty.all(Size(158.0,44.0)),
                        foregroundColor: MaterialStateProperty.all(Color(0xff333333)),
                        backgroundColor: MaterialStateProperty.all(Color(0xffFFFFFF)),
                        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10.0),
                              side: BorderSide(
                                  color: Color(0xff333333)
                              )
                          ),
                        )
                    ),
                    child: Text(
                      'Login',
                      style: TextStyle(
                          fontSize: 20.0,
                          letterSpacing: 1.0
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}








