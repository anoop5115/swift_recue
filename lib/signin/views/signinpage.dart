// ignore_for_file: prefer_const_literals_to_create_immutables

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_application_1/signin/components/textfield.dart';
import 'package:get/get.dart';

class SignInPage extends StatelessWidget {
  SignInPage({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController password = TextEditingController();
    TextEditingController email = TextEditingController();
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(height: 200),
              const Text(
                "Swift Rescue",
                style: TextStyle(
                    fontFamily: AutofillHints.countryName,
                    fontWeight: FontWeight.bold,
                    fontSize: 40),
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: textField("email", Icons.email, false, email,
                      TextInputType.emailAddress)),
              Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: textField("password", Icons.lock, true, password,
                      TextInputType.text)),
              const SizedBox(
                height: 20,
              ),
              Padding(
                  padding:
                      const EdgeInsetsDirectional.symmetric(horizontal: 15),
                  child: ElevatedButton(
                      style: TextButton.styleFrom(
                          backgroundColor: Colors.green,
                          foregroundColor: Colors.white,
                          minimumSize: const Size(double.infinity, 50)),
                      onPressed: () => Get.offNamed('/home'),
                      child: const Text("Signin"))),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("don't have an account",
                      style: TextStyle(
                        fontSize: 15,
                      )),
                  SizedBox(
                    width: 5,
                  ),
                  InkWell(
                    onTap: () => Get.toNamed('/signup'),
                    child: Text(
                      "signup",
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.blue),
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
