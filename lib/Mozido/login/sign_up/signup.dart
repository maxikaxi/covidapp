import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:covidapp/Mozido/login/constants.dart';
import 'package:covidapp/Mozido/login/sign_in/components/contact.dart';

import 'components/credentials.dart';
import 'components/head_text.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.bottomCenter,
              end: Alignment.topCenter,
              colors: [
            /*  lightPrimary,
                darkPrimary, */
            Color(0xFF31A1C9),
            Color(0xEA1F3F48),
          ])),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              HeadText(),
              Credentials(),
              //  Contact(),
            ],
          ),
        ),
      ),
    );
  }
}
