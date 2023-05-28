import 'package:flutter/material.dart';
import 'package:spreexchange/models/constants.dart';
import 'package:spreexchange/screens/signup_screen2.dart';
class SignUpScreen1 extends StatefulWidget {
  const SignUpScreen1({Key? key}) : super(key: key);

  @override
  State<SignUpScreen1> createState() => _SignUpScreen1State();
}

class _SignUpScreen1State extends State<SignUpScreen1> {
  @override
  Widget build(BuildContext context) {

    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading: IconButton(
            onPressed: (){
              Navigator.pop(context);
            },
            icon: Icon(
                Icons.arrow_back_ios_rounded,
            color: Colors.black,
            )
        ),
        elevation: 0.0,
        backgroundColor: Colors.white,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Image.asset('images/dot1.png'),
            ),
            Container(
              margin: EdgeInsets.only(right: 70, bottom: 10.0),
              height: 40.0,
              width: 300.0,
              color: Colors.white,
              child: Text('What\'s your email ?',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 30.0
              ),),
              ),

            Container(
              height: 40.0,
              width: size.width * 0.9,
              color: Colors.white,
              child: Text('We\'ll send you a verification code so make sure it\'s your email',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 15.0,
                    color: Colors.grey,
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 30.0),
              height: 60.0,
              width: size.width * 0.9,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.0),
                color: Colors.blue.shade50,
              ),
              child: Padding(
                padding: EdgeInsets.only(left: 8.0,top: 5.0),
                child: TextField(
                  decoration: InputDecoration(
                    hintStyle: TextStyle(
                      color: Colors.grey
                    ),
                    hintText: 'Enter email address',
                    border: InputBorder.none
                  ),
                ),
              ),
            ),

            SizedBox(height: size.height * 0.36),

            Row( mainAxisAlignment: MainAxisAlignment.center,
              children:  [
                Text('By continuing, you agree to our',),
                SizedBox(width: 0.2),
                TextButton(
                  onPressed: (){},
                  child: Text('Terms and Conditions',
                  style: TextStyle(
                    color: Colors.blue,
                    fontWeight: FontWeight.w500,
                  ),),
                )
              ],
            ),
            SizedBox(height: 1.0),
            TextButton(
                onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => SignUpScreen2()));
                },
                style: TextButton.styleFrom(
                  primary: Color(0xffFFFFFF),
                  backgroundColor: kPrimaryColor,
                  fixedSize: Size(size.width * 0.9,50.0)
                ),
                child: Text('Next',
                style: TextStyle(
                  fontSize: 18.0,
                  letterSpacing: 1.0
                ),)
            )
          ],
        ),
      ),
    );
  }
}
