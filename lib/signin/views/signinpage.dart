// ignore_for_file: prefer_const_literals_to_create_immutables

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:swift_recue/signin/models/components/textfield.dart';

class SignInPage extends StatelessWidget {
  SignInPage({super.key});

  @override
  Widget build(BuildContext context) {
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
                  child: textField("username", Icons.email, false, email)),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.lock),
                    hintStyle:
                        const TextStyle(color: Colors.white, fontSize: 18),
                    fillColor: Colors.black38,
                    filled: true,
                    hintText: "Enter password",
                    focusedBorder: OutlineInputBorder(
                        borderSide: const BorderSide(color: Colors.black38),
                        borderRadius: BorderRadius.circular(25)),
                    enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.black38),
                        borderRadius: BorderRadius.circular(25)),
                  ),
                ),
              ),
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
                      onPressed: () {},
                      child: const Text("SignUp")))
            ],
          ),
        ),
      ),
    );
  }
}
