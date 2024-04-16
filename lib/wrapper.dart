import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import 'home/views/homescreen.dart';
import 'signin/views/signinpage.dart';

class Wrapper extends StatefulWidget {
  const Wrapper({super.key});

  @override
  State<Wrapper> createState() => WrapperState();
}

class WrapperState extends State<Wrapper> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StreamBuilder(
        stream: FirebaseAuth.instance.authStateChanges(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return HomeScreen();
          } else {
            return SignInPage();
          }
        },
      ),
    );
  }
}
