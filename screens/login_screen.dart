import 'package:flutter/material.dart';
import 'package:spreexchange/models/constants.dart';
import 'package:spreexchange/screens/signup_screen1.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {

  bool passwordObscure = true;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: (){
              Navigator.pop(context);
            },
            icon: Icon(Icons.arrow_back_ios_rounded)),
        backgroundColor: kPrimaryColor,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Padding(
            padding: EdgeInsets.only(top: 20.0),
            child: Column(
              children: [
                Image.asset('images/authentication.png',
                width: size.width * 0.6,
                ),

                Container(
                  margin: EdgeInsets.symmetric(vertical: 10.0),
                  padding: EdgeInsets.symmetric(vertical: 5.0, horizontal: 20.0),
                  width: size.width * 0.85,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50.0),
                    color: Colors.blue.shade50
                  ),
                  child: TextField(
                    onChanged: (value){},
                    decoration: InputDecoration(
                      icon: Icon(
                        Icons.person,
                        color: kPrimaryColor,
                      ),
                      hintText: 'Enter your email',
                      border: InputBorder.none
                    ),
                  ),
                ),

                Container(
                  margin: EdgeInsets.symmetric(vertical: 10.0),
                  padding: EdgeInsets.symmetric(vertical: 5.0, horizontal: 20.0),
                  width: size.width * 0.85,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50.0),
                      color: Colors.blue.shade50
                  ),
                  child: TextField(
                    obscureText: passwordObscure,
                    onChanged: (value){},
                    decoration: InputDecoration(
                        icon: Icon(
                          Icons.lock,
                          color: kPrimaryColor,
                        ),
                        suffixIcon: IconButton(
                          icon: Icon(
                            passwordObscure ?
                            Icons.visibility_off : Icons.visibility,
                            color: kPrimaryColor,
                          ),
                          onPressed: (){
                            setState((){
                              passwordObscure = !passwordObscure;
                            });
                          },
                        ),
                        hintText: 'Password',
                        border: InputBorder.none
                    ),
                  ),
                ),

                SizedBox(
                  height: 10.0,
                ),

                TextButton(
                    onPressed: (){},
                    child: Text('Forgot Password ?'),
                ),

                TextButton(
                    onPressed: (){},
                  style: TextButton.styleFrom(
                    primary: Colors.white,
                    backgroundColor: kPrimaryColor,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50.0)
                    ),
                    fixedSize: Size(300.0, 50.0)
                  ),
                    child: Text(
                      'LOGIN',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        letterSpacing: 1.2
                      ),
                    ),
                ),
                SizedBox(
                  height: 10.0,
                ),

                TextButton(
                  onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => SignUpScreen1()));
                  },
                  style: TextButton.styleFrom(
                      primary: Colors.white,
                      backgroundColor: kPrimaryColor,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(50.0)
                      ),
                      fixedSize: Size(300.0, 50.0)
                  ),
                  child: Text(
                    'SIGN UP',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        letterSpacing: 1.2
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
