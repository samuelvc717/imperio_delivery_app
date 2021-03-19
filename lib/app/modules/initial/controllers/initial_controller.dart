import 'package:get/get.dart';

class InitialController extends GetxController {
  @override
  void onInit() {
    Future.delayed(Duration(seconds: 7), () => Get.offNamed('/home'));
    super.onInit();
  }
}
