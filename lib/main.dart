//renjith jayadev anoop hamid
//anoop branch
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:swift_recue/signin/views/signinpage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(),
      initialRoute: '/signin',
      getPages: [GetPage(name: '/signin', page: () => SignInPage())],
    );
  }
}
