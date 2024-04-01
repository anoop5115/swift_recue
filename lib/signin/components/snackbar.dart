import 'package:flutter/material.dart';
import 'package:get/get.dart';

SnackbarController snackbar(String title, String content, SnackPosition pos) {
  return Get.snackbar("${title}", " ${content}", snackPosition: pos);
}
