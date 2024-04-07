import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_application_1/edit_profile.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
    statusBarColor: Colors.transparent,
    statusBarIconBrightness: Brightness.dark
  ));
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const ProfileScreen(),
    );
  }
}

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(50),
        child: Column(
          children: [
            Container(
              width: 140,
              height: 140,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(
                  color: Colors.purple.shade300, 
                  width: 4,
                ),
              ),
              child: const CircleAvatar(
                radius: 60,
                backgroundColor: Colors.white, 
                backgroundImage: AssetImage('assets/images/driver.png'),
              ),
            ),
            SizedBox(height: 60),
            itemProfile('Name', 'Max Verstappen', CupertinoIcons.person),
            SizedBox(height: 10),
            itemProfile('Phone', '9837497318', CupertinoIcons.phone),
            SizedBox(height: 10),
            itemProfile('Address/City', 'New York, California', CupertinoIcons.location),
            SizedBox(height: 10),
            itemProfile('Email', 'maxv@gmail.com', CupertinoIcons.mail),
            SizedBox(height: 10),
            itemProfile('Vehicle Model', 'Tata Venture', CupertinoIcons.car_detailed),
            SizedBox(height: 10),
            itemProfile('Vehicle Type', 'Patient Transport Vehicle', CupertinoIcons.info),
            SizedBox(height: 10),
            itemProfile('Vehicle No.', 'JH-01-CJ-9528', CupertinoIcons.number),
            SizedBox(height: 50),
            SizedBox(
              width: double.infinity,
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.3), 
                      spreadRadius: 3,
                      blurRadius: 7,
                      offset: const Offset(0, 3), 
                    ),
                  ],
                ),
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const EditProfileScreen()),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    overlayColor: Colors.purple,
                    padding: const EdgeInsets.all(15),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    elevation: 0, 
                  ),
                  child: const Text('Edit Profile', style: TextStyle(fontSize: 18, color: Colors.deepPurple)),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  itemProfile(String title,String subtitle,IconData iconData){
    return Container(
      decoration: BoxDecoration(
        color: Colors.purple.shade50,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            offset: const Offset(0, 5),
            color: Colors.grey.withOpacity(0.1),
            spreadRadius: 2,
            blurRadius: 10,
          )
        ]
      ),
      child: ListTile(
        title: Text(
          title,
          style: const TextStyle(fontWeight: FontWeight.bold), 
        ),
        subtitle: Text(subtitle),
        leading: Icon(iconData),
        trailing: Icon(Icons.double_arrow, color: Colors.grey.shade400),
        tileColor: Colors.purple.shade100,
      ),
    );
  }
}