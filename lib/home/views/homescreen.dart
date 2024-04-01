import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:swift_recue/home/controller/homecontroller.dart';
import 'package:swift_recue/medicalrecords/medicalrecord.dart';

import 'package:swift_recue/profile/views/profile.dart';
import 'package:swift_recue/sospage/views/sos.dart';

class HomeScreen extends StatelessWidget {
  final homecontroller controller = Get.put(homecontroller());

  @override
  Widget build(BuildContext context) {
    return GetBuilder<homecontroller>(builder: (controller) {
      return Scaffold(
        backgroundColor: Colors.white,
        body: SafeArea(
          child: IndexedStack(
            index: controller.tabIndex,
            children: [
              /* Replace YourHomeWidget() with the actual widget you want to display */

              MedicalInformationPage(),
              HomePage(),
              ProfilePage(),
            ],
          ),
        ),
        bottomNavigationBar: Padding(
          padding: const EdgeInsets.all(10),
          child: GNav(
            rippleColor: Colors.grey[300]!,
            hoverColor: Colors.grey[100]!,
            gap: 8,
            activeColor: Colors.black,
            iconSize: 24,
            padding: const EdgeInsets.symmetric(
              horizontal: 15.0,
              vertical: 8,
            ),
            duration: const Duration(milliseconds: 400),
            tabBackgroundColor: Colors.grey[100]!,
            color: Color.fromARGB(255, 3, 3, 3),
            // rippleColor: Colors.green.withOpacity(.1),
            onTabChange: controller.changeTabIndex,
            // gap: 8,
            // backgroundColor: Color.fromARGB(255, 0, 0, 0).withOpacity(1),
            // tabBorderRadius: 10.0,
            tabs: const [
              GButton(
                iconActiveColor: Colors.blue,
                text: "Medical Info",
                // iconActiveColor: Colors.green,
                icon: Icons.info_outline,
              ),
              GButton(
                iconActiveColor: Colors.blue,
                text: "Home",
                // iconActiveColor: Colors.green,
                icon: Icons.home,
              ),
              GButton(
                iconActiveColor: Colors.blue,
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
