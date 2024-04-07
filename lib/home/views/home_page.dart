import 'package:flutter/material.dart';
import 'package:flutter_application_1/container.dart';
import 'package:get/get.dart';
import 'package:url_launcher/url_launcher.dart';

class HomePage2 extends StatelessWidget {
  const HomePage2({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color.fromARGB(255, 255, 255, 255),
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Color.fromARGB(255, 255, 255, 255),
          title: Center(
              child: Text(
            "Having an emergency?",
            style: TextStyle(
                color: Colors.blueAccent.withOpacity(.8),
                fontWeight: FontWeight.bold,
                fontSize: 30),
          )),
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                SizedBox(
                  height: height * .2,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      InkWell(
                        hoverColor: Colors.blueAccent.withOpacity(.5),
                        onTap: () {
                          Get.toNamed('/videocall');
                        },
                        child: Container(
                          height: height * .4,
                          width: width * .43,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(40),
                            gradient: LinearGradient(
                              begin: Alignment.topLeft,
                              end: Alignment.bottomRight,
                              colors: [
                                Colors.blue,
                                Colors.grey.withOpacity(.4),
                              ],
                            ),
                          ),
                          child: const Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(
                                  Icons.local_hospital_rounded,
                                  size: 40,
                                  color: Colors.white,
                                ),
                                SizedBox(
                                  height: 20,
                                ),
                                Text(
                                  "CONNECT",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white),
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: width * .05,
                      ),
                      InkWell(
                        onTap: () {
                          Get.toNamed('/search');
                        },
                        child: Container(
                          height: height * .4,
                          width: width * .43,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(40),
                            gradient: LinearGradient(
                              begin: Alignment.topLeft,
                              end: Alignment.bottomRight,
                              colors: [
                                Colors.grey.withOpacity(.4),
                                Colors.blue,
                              ],
                            ),
                          ),
                          child: Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(
                                  Icons.search,
                                  size: 40,
                                  color: Colors.blueAccent.withOpacity(.5),
                                ),
                                SizedBox(
                                  height: 20,
                                ),
                                Text(
                                  "SEARCH",
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.blueAccent.withOpacity(.5),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: height * 0.1,
                ),
                Row(
                  children: [
                    SizedBox(
                      width: 20,
                    ),
                    InkWell(
                      onTap: () async {
                        final Uri url = Uri.parse(
                            'https://www.google.com/maps/search/hospital');
                        if (!await launchUrl(url)) {
                          throw Exception('Could not launch ');
                        }
                      },
                      child: Text(
                        "view on map",
                        style: TextStyle(
                          decoration: TextDecoration.underline,
                          decorationThickness: 2,
                          // decorationStyle: TextDecorationStyle.dashed,
                          decorationColor: Colors.blueAccent.withOpacity(.5),
                          textBaseline: TextBaseline.ideographic,
                          color: Colors.blue.withOpacity(.8),
                          fontSize: 20,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: height * 0.1,
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                      width: double.infinity,
                      height: height * .7,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(
                            10.0), // Adjust the radius as needed

                        child: Image.asset(
                          'lib/assets/loc.png',
                          fit: BoxFit.cover,
                        ),
                      )),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
