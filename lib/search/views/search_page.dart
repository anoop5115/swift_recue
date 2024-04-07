import 'package:flutter/material.dart';
import 'package:flutter_application_1/container.dart';
import 'package:flutter_application_1/signin/components/textfield.dart';
import 'package:get/get.dart';
import 'package:zego_uikit_prebuilt_call/zego_uikit_prebuilt_call.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController search = TextEditingController();
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(10),
          child: CustomScrollView(
            scrollDirection: Axis.vertical,
            physics: const BouncingScrollPhysics(),
            slivers: [
              SliverAppBar(
                stretch: true,
                titleSpacing: 20,
                floating: true,
                pinned: true,
                // title: Text(" HOSPITALS"),
                title: Padding(
                  padding: const EdgeInsets.all(0),
                  child: Container(
                    height: 50,
                    width: double.infinity,
                    child: textField("search", Icons.search, false, search,
                        TextInputType.text),
                  ),
                ),
                expandedHeight: 250,
                flexibleSpace: FlexibleSpaceBar(
                  background: Image.asset(
                    'lib/assets/coverpage1.png',
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              SliverList(
                  delegate:
                      SliverChildBuilderDelegate((context, index) => Padding(
                            padding: EdgeInsets.only(top: 5, bottom: 5),
                            child: Container(
                              decoration: BoxDecoration(
                                  gradient: LinearGradient(
                                    begin: Alignment.topLeft,
                                    end: Alignment.bottomRight,
                                    colors: [
                                      Colors.blue,
                                      Colors.grey.withOpacity(.4),
                                    ],
                                  ),
                                  borderRadius: BorderRadius.circular(20)),
                              width: double.infinity,
                              height: 150,
                            ),
                          )))
            ],
          ),
        ),
      ),
    );
  }
}
