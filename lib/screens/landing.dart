import 'package:ecommerce/utils/colors.dart';
import 'package:flutter/material.dart';

class Landing extends StatefulWidget {
  @override
  _LandingState createState() => _LandingState();
}

class _LandingState extends State<Landing> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(top: 70, bottom: 70),
            child: Text(
              "Sign In",
              style: TextStyle(
                fontSize: 40,
                color: AppColors.primaryColor,
              ),
              textAlign: TextAlign.center,
            ),
          ),
          Container(
            child: Column(
              children: <Widget>[],
            ),
            decoration: BoxDecoration(
              color: AppColors.primaryColor,
            ),
            // height: 100,
          ),
        ],
      ),
    );
  }
}
