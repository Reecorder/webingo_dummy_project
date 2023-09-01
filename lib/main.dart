import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:webingo_project/controller/profile_controller.dart';
import 'package:webingo_project/views/sloadingScreen.dart';

void main() {
  // Get.lazyPut<ProfileController>(() => ProfileController());

  runApp(
    const GetMaterialApp(
      title: "Webingo",
      locale: Locale('en', 'US'),
      fallbackLocale: Locale('en', 'US'),
      home: LoadingPage(
        title: 'Dashboard',
      ),
      debugShowCheckedModeBanner: false,
    ),
  );
}
