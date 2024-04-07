import 'package:flutter/material.dart';

Container container(String text, {required double height}) {
  return Container(
    padding: EdgeInsets.all(10),
    width: double.infinity,
    height: 50,
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Icon(
          Icons.local_hospital,
        ),
        Column(
          children: [
            Text(text),
          ],
        ),
        Icon(Icons.connect_without_contact)
      ],
    ),
  );
}
