import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomepageController extends GetxController {
  static HomepageController get instance => Get.find();
  //Textfield controller to get data from textfields
  final email = TextEditingController();
  final password = TextEditingController();
  final fullName = TextEditingController();
  final phoneNo = TextEditingController();

  void registerUser(String email, String password) {}
}
