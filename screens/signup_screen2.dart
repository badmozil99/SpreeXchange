import 'package:flutter/material.dart';
import 'package:spreexchange/models/constants.dart';
import 'package:spreexchange/screens/signUp_screen3.dart';
class SignUpScreen2 extends StatefulWidget {
  const SignUpScreen2({Key? key}) : super(key: key);

  @override
  State<SignUpScreen2> createState() => _SignUpScreen2State();
}

class _SignUpScreen2State extends State<SignUpScreen2> {
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
              child: Image.asset('images/dot2.png'),
            ),
            Container(
              margin: EdgeInsets.only(right: 70, bottom: 10.0),
              height: 40.0,
              width: 300.0,
              color: Colors.white,
              child: Text('Confirm OTP sent',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 30.0
                ),),
            ),

            Container(
              height: 20.0,
              width: size.width * 0.9,
              color: Colors.white,
              child: Text('Please enter the OTP sent to your email address',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 15.0,
                  color: Colors.grey,
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 20.0),
              height: 60.0,
              width: size.width * 0.9,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.0),
                color: Colors.blue.shade50,
              ),
              child: Padding(
                padding: EdgeInsets.only(left: 8.0,top: 5.0),
                child: TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                      hintStyle: TextStyle(
                          color: Colors.grey
                      ),
                      hintText: '0000',
                      border: InputBorder.none
                  ),
                ),
              ),
            ),

            SizedBox(height: size.height * 0.41),

            Row( mainAxisAlignment: MainAxisAlignment.center,
              children:  [
                Text('Didn\'t receive OTP ?',),
                SizedBox(width: 0.2),
                TextButton(
                  onPressed: (){},
                  style: TextButton.styleFrom(
                    backgroundColor: Colors.blue.shade50,
                  ),
                  child: Text('Resend',
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
                  Navigator.push(context, MaterialPageRoute(builder: (context) => SignUpScreen3()));
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
