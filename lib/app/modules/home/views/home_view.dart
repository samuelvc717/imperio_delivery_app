import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../app/modules/home/widgets/bottom_nav_bar.dart';
import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: Container(
        color: Colors.grey[150],
        height: Get.height,
        width: Get.width,
        child: Stack(
          children: [
            Container(
              child: ListView(
                children: [
                
                ],
              ),
            ),
            BottomNavBar(),
          ],
        ),
      ),
    );
  }
}
