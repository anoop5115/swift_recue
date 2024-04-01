//renjith jayadev anoop hamid
//anoop branch
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:swift_recue/home/views/homescreen.dart';
import 'package:swift_recue/signin/views/signinpage.dart';

import 'package:swift_recue/signin/views/signuppage.dart';
import 'package:flutter/services.dart';

void main() {
  SystemChrome.setPreferredOrientations([
    // DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      // theme: ThemeData.dark(),
      initialRoute: '/signin',
      getPages: [
        GetPage(name: '/signin', page: () => SignInPage()),
        GetPage(name: '/signup', page: () => SignUpPage()),
        GetPage(name: '/home', page: () => HomeScreen())
      ],
    );
  }
}
