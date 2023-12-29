import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import '../../network_client/network_clients.dart';

import '../internet_checker_controller/internet_checker_controller.dart';

BindingsBuilder createBindings(BuildContext context) {
  return BindingsBuilder(() {
    /* -------------------------------------------------------------------------- */
    /*                                   NetworkClient                            */
    /* -------------------------------------------------------------------------- */
    Get.put<NetworkClient>(
      NetworkClient(
        getUserAuthToken: () async {
          String? authToken ="";
          return authToken;
        },
      ),
      permanent: true,
    );
    /* -------------------------------------------------------------------------- */
    /*                                   NoInternetController                     */
    /* -------------------------------------------------------------------------- */
    Get.put<InternetConnectionController>(
      InternetConnectionController(),
      permanent: true,
    );
  });
}
