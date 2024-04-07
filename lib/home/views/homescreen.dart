import 'package:flutter/material.dart';
import 'package:flutter_application_1/home/controller/homecontroller.dart';
import 'package:flutter_application_1/home/medicalrecords/medicalrecord.dart';
import 'package:flutter_application_1/home/views/home_page.dart';
import 'package:flutter_application_1/medicalrecords/views/medical_rec_searchPage.dart';
import 'package:flutter_application_1/profile/views/Profile_page.dart';

import 'package:flutter_application_1/video_call/video_call_priorpage.dart';
import 'package:get/get.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class HomeScreen extends StatelessWidget {
  final homecontroller controller = Get.put(homecontroller());

  @override
  Widget build(BuildContext context) {
    return GetBuilder<homecontroller>(builder: (controller) {
      return Scaffold(
        // backgroundColor: Colors.white,
        body: SafeArea(
          child: IndexedStack(
            index: controller.tabIndex,
            children: [
              /* Replace YourHomeWidget() with the actual widget you want to display */

              MedicalRecordSearch(),
              HomePage2(),
              ProfileScreen()
            ],
          ),
        ),
        bottomNavigationBar: Padding(
          padding: const EdgeInsets.all(10),
          child: GNav(
            tabBackgroundGradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                Colors.blue,
                Colors.grey.withOpacity(.5),
              ],
            ),
            gap: 8,
            activeColor: Colors.black,
            iconSize: 24,
            padding: const EdgeInsets.symmetric(
              horizontal: 20.0,
              vertical: 15,
            ),
            duration: const Duration(milliseconds: 400),
            // tabBackgroundColor: Colors.grey[100]!,
            color: Colors.black,
            // rippleColor: Colors.green.withOpacity(.1),
            onTabChange: controller.changeTabIndex,
            // gap: 8,
            // backgroundColor: Color.fromARGB(255, 0, 0, 0).withOpacity(1),
            // tabBorderRadius: 10.0,
            tabs: [
              GButton(
                iconActiveColor: Colors.white,
                text: "Medical Info",
                // iconActiveColor: Colors.green,
                icon: Icons.info_outline,
              ),
              GButton(
                iconActiveColor: Colors.white,
                text: "Home",
                // iconActiveColor: Colors.green,
                icon: Icons.home,
              ),
              GButton(
                iconActiveColor: Colors.white,
                text: "Profile",
                // iconActiveColor: Colors.green,
                icon: Icons.person,
              ),
            ],
          ),
        ),
      );
    });
  }
}
