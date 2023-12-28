import 'dart:async';

import 'package:get/get.dart';

import '../../resources/routes/routes_name.dart';

class SplashServices {
  void isSplashToLogin() {
    Timer(const Duration(seconds: 3), () {
      Get.toNamed(RoutesName.listView);
    });
  }
}
