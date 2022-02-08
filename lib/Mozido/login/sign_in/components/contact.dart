import 'package:covidapp/Mozido/t2_home.dart';
import 'package:flutter/material.dart';
import 'package:covidapp/Mozido/login/constants.dart';
import 'package:covidapp/Mozido/login/sign_up/signup.dart';
import 'package:covidapp/Mozido/login/widgets/account_check.dart';
import 'package:covidapp/Mozido/login/widgets/rounded_button.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:webview_flutter/webview_flutter.dart';

import '../../../Puls_Analyse.dart';
import '../../Uebungen_webview.dart';

final GlobalKey<ScaffoldState> test = new GlobalKey<ScaffoldState>();

class Contact extends StatelessWidget {
  const Contact({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 30,
        ),
        Center(
          child: TextButton(
              child: Text(
                'oder kontaktieren Sie uns  \u{1F4E7}',
                style: TextStyle(fontSize: 17, fontWeight: FontWeight.w400),
              ),
              onPressed: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) => T2_home()));
              }),
        ),
        SizedBox(
          height: appPadding,
        ),
        /*  AccountCheck(
          login: true,
          press: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) {
                  return SignUpScreen();
                },
              ),
            );
          },
        ), */
      ],
    );
  }

  void _launchURL() async {
    // if (!await launch("mailto:")) throw 'Could not launch $_url';
  }
}

class SecondRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Second Route'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            // Navigate back to first route when tapped.
          },
          child: const Text('Go back!'),
        ),
      ),
    );
  }
}
