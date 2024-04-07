import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/home.dart';
import 'package:flutter_application_1/splash.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // TRY THIS: Try running your application with "flutter run". You'll see
        // the application has a purple toolbar. Then, without quitting the app,
        // try changing the seedColor in the colorScheme below to Colors.green
        // and then invoke "hot reload" (save your changes or press the "hot
        // reload" button in a Flutter-supported IDE, or press "r" if you used
        // the command line to start the app).
        //
        // Notice that the counter didn't reset back to zero; the application
        // state is not lost during the reload. To reset the state, use hot
        // restart instead.
        //
        // This works for code too, not just values: Most code changes can be
        // tested with just a hot reload.
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: AnimatedSplashScreen(
        splash: Container(
          decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.1),
                spreadRadius: 13,
                blurRadius: 20,
                offset: Offset(0, 18),
              ),
            ],
          ),
          child: const Icon(
            Icons.local_taxi_rounded,
            color: Colors.black,
          ),
        ),
        duration: 3000,
        splashTransition: SplashTransition.scaleTransition,
        backgroundColor: Colors.deepPurple.shade300,
        nextScreen: const MyHomePage(title: 'SwiftRescue'),
        // Center(
        //   child: Column(
        //     mainAxisAlignment: MainAxisAlignment.center,
        //     children: [
        //       Container(
        //         height: 100,
        //         width: 100,
        //         color: Colors.blue,
        //         ),
        //       Container(
        //         child: const Text(
        //           'Splash Screen',
        //           style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
        //         ),
        //       ),
        //     ],
        //   ),
        // ), 
        
    ));
  }
}


