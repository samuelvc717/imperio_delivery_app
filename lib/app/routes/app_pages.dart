import 'package:get/get.dart';

import 'package:imperio_delivery/app/modules/initial/bindings/initial_binding.dart';
import 'package:imperio_delivery/app/modules/initial/views/initial_view.dart';

import '../../app/modules/home/bindings/home_binding.dart';
import '../../app/modules/home/views/home_view.dart';

part 'app_routes.dart';

class AppPages {
  static const INITIAL = Routes.INITIAL;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.INITIAL,
      page: () => InitialView(),
      binding: InitialBinding(),
    ),
  ];
}
