import 'dart:html';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_application_1/profile/views/edit_profile.dart';
import 'package:flutter_application_1/profile/views/model/Profiledetails.dart';
import 'package:get/get.dart';

class ProfileScreen extends StatelessWidget {
  ProfileScreen({Key? key});

  TextEditingController nameC = TextEditingController();
  TextEditingController phoneC = TextEditingController();
  TextEditingController addressC = TextEditingController();
  TextEditingController emailC = TextEditingController();
  TextEditingController modelC = TextEditingController();
  TextEditingController typeC = TextEditingController();
  TextEditingController numberC = TextEditingController();

  Future<void> signOut() async {
    await FirebaseAuth.instance.signOut();
    Get.offAllNamed('/wrapper');
  }

  @override
  Widget build(BuildContext context) {
    final user = FirebaseAuth.instance.currentUser?.email ?? '';

    String namee = 'rere';
    return SafeArea(
      child: Scaffold(
          body: StreamBuilder<QuerySnapshot>(
              stream: FirebaseFirestore.instance
                  .collection('amb_details')
                  .where('email', isEqualTo: user)
                  .snapshots(),
              builder: (context, snapshot) {
                if (snapshot.connectionState == ConnectionState.waiting) {
                  return Center(child: CircularProgressIndicator());
                }

                if (snapshot.hasError) {
                  return Center(child: Text('Error: ${snapshot.error}'));
                }

                final allRecords = snapshot.data!.docs;
                final record = allRecords[0].data() as Map<String, dynamic>;

                return SingleChildScrollView(
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
                            backgroundImage:
                                AssetImage('lib/assets/driver.png'),
                          ),
                        ),
                        const SizedBox(width: double.infinity, height: 60),
                        itemProfile(
                            'Name', record['name'], CupertinoIcons.person),
                        const SizedBox(height: 10),
                        itemProfile(
                            'Phone', record['phone'], CupertinoIcons.phone),
                        const SizedBox(height: 10),
                        itemProfile('Address/City', 'New York, California',
                            CupertinoIcons.location),
                        const SizedBox(height: 10),
                        itemProfile('Vehicle Model', 'anoop',
                            CupertinoIcons.car_detailed),
                        const SizedBox(height: 10),
                        itemProfile('Vehicle Type', 'Patient Transport Vehicle',
                            CupertinoIcons.info),
                        const SizedBox(height: 10),
                        itemProfile('Vehicle No.', 'JH-01-CJ-9528',
                            CupertinoIcons.number),
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
                                      builder: (context) =>
                                          EditProfileScreen()),
                                );
                              },
                              style: ElevatedButton.styleFrom(
                                disabledBackgroundColor:
                                    Colors.blue.withOpacity(.6),
                                foregroundColor: Colors.blue.withOpacity(.6),
                                backgroundColor: Colors.blue.withOpacity(.6),
                                padding: const EdgeInsets.all(15),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                elevation: 0,
                              ),
                              child: const Text('Edit Profile',
                                  style: TextStyle(
                                      fontSize: 18, color: Colors.black)),
                            ),
                          ),
                        ),
                        const SizedBox(height: 20),
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
                                signOut();
                                Get.offAllNamed('/signin');
                              },
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.red.withOpacity(.6),
                                padding: const EdgeInsets.all(15),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                elevation: 0,
                              ),
                              child: const Text('Sign Out',
                                  style: TextStyle(
                                      fontSize: 18, color: Colors.black)),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              })),
    );
  }

  Widget itemProfile(String title, String subtitle, IconData iconData) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        gradient: const LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [
            Colors.blue,
            Colors.grey,
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
        trailing: const Icon(Icons.double_arrow, color: Colors.grey),
      ),
    );
  }
}
