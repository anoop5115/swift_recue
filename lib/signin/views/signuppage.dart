import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_application_1/profile/views/model/Profiledetails.dart';
import 'package:flutter_application_1/signin/components/snackbar.dart';
import 'package:flutter_application_1/signin/components/textfield.dart';
import 'package:flutter_application_1/wrapper.dart';
import 'package:get/get.dart';

class SignUpPage extends StatelessWidget {
  final Profiledetails pfd = Profiledetails();

  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();
  TextEditingController repassword = TextEditingController();
  TextEditingController contact = TextEditingController();
  TextEditingController city = TextEditingController();
  SignUpPage({super.key});

  Future signup() async {
    await FirebaseAuth.instance.createUserWithEmailAndPassword(
      email: email.text.trim(),
      password: password.text.trim(),
    );
    final user = FirebaseAuth.instance.currentUser;
    if (user != null) {
      final uid = user.uid;
      pfd.addDetails(email.text, contact.text, city.text, uid);
    }
    Get.offAllNamed('/wrapper');
    // Navigate to home page after successful sign-in
  }

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.sizeOf(context).height;
    return Scaffold(
        body: SafeArea(
      child: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(15),
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.spaceBetween ,
            children: [
              Row(
                children: [
                  InkWell(
                      onTap: () => Get.back(), child: Icon(Icons.arrow_back))
                ],
              ),
              Text("Create your account!"),
              SizedBox(
                height: height / 15,
              ),
              textField("username", Icons.email, false, email,
                  TextInputType.emailAddress),
              SizedBox(
                height: height / 30,
              ),
              textField("password", Icons.lock, true, password, null),
              SizedBox(
                height: height / 30,
              ),
              textField("confirm password", Icons.lock, true, repassword, null),
              SizedBox(
                height: height / 30,
              ),
              textField(
                  "contact", Icons.phone, true, contact, TextInputType.phone),
              SizedBox(
                height: height / 30,
              ),
              textField(
                  "city", Icons.location_city, false, city, TextInputType.text),
              SizedBox(
                height: height / 30,
              ),
              Padding(
                  padding:
                      const EdgeInsetsDirectional.symmetric(horizontal: 15),
                  child: ElevatedButton(
                      style: TextButton.styleFrom(
                          backgroundColor: Colors.green,
                          foregroundColor: Colors.white,
                          minimumSize: const Size(double.infinity, 50)),
                      onPressed: () {
                        if (password.text == "" || password.text == "") {
                          snackbar("password error", "password cant't empty",
                              SnackPosition.TOP);
                        }
                        if (password.text != repassword.text) {
                          snackbar("Password error", "password does't match",
                              SnackPosition.TOP);
                        } else {
                          signup();
                        }
                      },
                      child: const Text("Signup"))),
            ],
          ),
        ),
      ),
    ));
  }
}
