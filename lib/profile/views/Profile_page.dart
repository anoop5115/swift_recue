import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:flutter_application_1/profile/views/edit_profile.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(15),
            child: Column(
              children: [
                Container(
                  width: 140,
                  height: 140,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(
                      color: Colors.blue,
                      width: 4,
                    ),
                  ),
                  child: const CircleAvatar(
                    radius: 60,
                    backgroundColor: Colors.white,
                    backgroundImage: AssetImage('lib/assets/driver.png'),
                  ),
                ),
                const SizedBox(width: double.infinity, height: 60),
                itemProfile('Name', 'Max Verstappen', CupertinoIcons.person),
                const SizedBox(height: 10),
                itemProfile('Phone', '9837497318', CupertinoIcons.phone),
                const SizedBox(height: 10),
                itemProfile('Address/City', 'New York, California',
                    CupertinoIcons.location),
                const SizedBox(height: 10),
                itemProfile('Email', 'maxv@gmail.com', CupertinoIcons.mail),
                const SizedBox(height: 10),
                itemProfile('Vehicle Model', 'Tata Venture',
                    CupertinoIcons.car_detailed),
                const SizedBox(height: 10),
                itemProfile('Vehicle Type', 'Patient Transport Vehicle',
                    CupertinoIcons.info),
                const SizedBox(height: 10),
                itemProfile(
                    'Vehicle No.', 'JH-01-CJ-9528', CupertinoIcons.number),
                const SizedBox(height: 50),
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
                          MaterialPageRoute(
                              builder: (context) => const EditProfileScreen()),
                        );
                      },
                      style: ElevatedButton.styleFrom(
                        disabledBackgroundColor: Colors.blue.withOpacity(.6),
                        foregroundColor: Colors.blue.withOpacity(.6),
                        backgroundColor: Colors.blue.withOpacity(.6),
                        padding: const EdgeInsets.all(15),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        elevation: 0,
                      ),
                      child: const Text('Edit Profile',
                          style: TextStyle(fontSize: 18, color: Colors.black)),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  itemProfile(String title, String subtitle, IconData iconData) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [
            Colors.blue,
            Colors.grey.withOpacity(.4),
          ],
        ),
      ),
      child: ListTile(
        title: Text(
          title,
          style: const TextStyle(fontWeight: FontWeight.bold),
        ),
        subtitle: Text(subtitle),
        leading: Icon(iconData),
        trailing: Icon(Icons.double_arrow, color: Colors.grey.shade400),
      ),
    );
  }
}
