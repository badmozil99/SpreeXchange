import 'package:flutter/material.dart';
import 'package:spreexchange/models/constants.dart';
import 'package:spreexchange/screens/login_screen.dart';
import 'package:spreexchange/models/onboardData.dart';
import 'package:spreexchange/screens/signup_screen1.dart';

class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({Key? key}) : super(key: key);

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  int _pageIndex = 0;

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
                onPageChanged: (index){
                    setState((){
                      _pageIndex = index;
                    });
                },
                physics: BouncingScrollPhysics(),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 196.0, bottom: 50.0),
              child: Row(
                children: [
                  ...List.generate(onboardData.length, (index) => Padding(
                    padding: const EdgeInsets.only(right: 4.0),
                    child: SwipeIndicator( isActive: index == _pageIndex),
                  ),)
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 30.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextButton(
                    onPressed: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context) =>LoginScreen()));
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
                  SizedBox(width: 35.0),
                  TextButton(
                    onPressed: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context) => SignUpScreen1()));
                    },
                    style: TextButton.styleFrom(
                        primary: Color(
                            0xffFFFFFF
                        ),
                        backgroundColor: kPrimaryColor,
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
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class SwipeIndicator extends StatelessWidget {
  const SwipeIndicator({
    Key? key,
    this.isActive = false
  }) : super(key: key);

  final bool isActive;

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: Duration(milliseconds: 300),
      height: isActive? 12 : 4,
      width: 4,
      decoration: BoxDecoration(
        color: isActive? kPrimaryColor : kPrimaryColor.withOpacity(0.5),
        borderRadius: BorderRadius.all(Radius.circular(12))
      ),
    );
  }
}








