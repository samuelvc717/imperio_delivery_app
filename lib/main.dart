import 'package:flutter/material.dart';
import 'package:get/get.dart';

import './app/theme/app_theme.dart';
import './app/routes/app_pages.dart';

void main() {
  runApp(
    GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Imperio Delivery",
      theme: appThemeData ,
      initialRoute: AppPages.INITIAL,
      getPages: AppPages.routes,
      // initialBinding: ,
    ),
  );
}
