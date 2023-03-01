import 'package:flutter/material.dart';
class GetStartedScreen extends StatelessWidget {
  const GetStartedScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:SafeArea(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('In progress',
                style: TextStyle(
                  fontSize: 30.0
                ),),
                Image.asset('images/app-development.png',
                height: 200.0,
                width: 200.0,)
              ],
            ),
          )
      )
    );
  }
}
