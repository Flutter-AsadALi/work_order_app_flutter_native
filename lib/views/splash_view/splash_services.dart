import 'dart:async';

import 'package:get/get.dart';

import '../list_order_view.dart';

class SplashServices {
  void isSplashToLogin() {
    Timer(const Duration(seconds: 3), () {
      Get.offAll(const ListOrderView());
    });
  }
}
