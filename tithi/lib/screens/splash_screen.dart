import 'dart:async';

import 'package:flutter/material.dart';
import 'package:tithi/screens/home_page.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 3), () {
      Navigator.of(context).pop();
      Navigator.of(context).push(
        MaterialPageRoute(
          builder: (context) => HomePage(),
        ),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.purple[50],
        child: SafeArea(
          child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(),
              Expanded(
                child: Center(
                  child: Text(
                    'Tithi',
                    style: TextStyle(
                      fontFamily: 'Pacifico',
                      fontSize: 60,
                      fontWeight: FontWeight.w100,
                      color: Colors.purple[500],
                    ),
                  ),
                ),
              ),
              Text(
                'crafted by',
                style: TextStyle(
                  fontFamily: 'Poppins',
                  fontSize: 20,
                  color: Colors.blueGrey,
                ),
              ),
              Text(
                'SOUVIK BISWAS',
                style: TextStyle(
                  fontFamily: 'Raleway',
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                  color: Colors.blueGrey[700],
                ),
              ),
              SizedBox(height: 30)
            ],
          ),
        ),
      ),
    );
  }
}
