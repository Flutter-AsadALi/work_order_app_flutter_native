import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

import '../helper/get_list_helper.dart';
import '../models/model.dart';
import '../network_client/network_clients.dart';
import '../utils/show_messages.dart';

class ListViewController extends GetxController {
  static const platform = MethodChannel('apiChannel');
  RxBool isLoading = false.obs;
  RxBool isLoadingUpdate = false.obs;
  late ListViewHelper listViewHelper;
  late WorkOrderModel workOrderModel;

/* -------------------------------------------------------------------------- */
/*                              onInit State                                  */
/* -------------------------------------------------------------------------- */
  @override
  void onInit() {
    listViewHelper = ListViewHelper(Get.find<NetworkClient>());
    getDataFromNative();
    // getData();
    super.onInit();
  }

/* -------------------------------------------------------------------------- */
/*                              Native Api Cal                                 */
/* -------------------------------------------------------------------------- */
  Future<void> getDataFromNative() async {
    // ignore: prefer_typing_uninitialized_variables
    var apiData;
    if (kDebugMode) {
      print("data is ============");
    }
    try {
      isLoading.value = true;
      apiData = await platform.invokeMethod('getDataFromAPI');
      if (kDebugMode) {
        print("data===============");
        // ignore: prefer_interpolation_to_compose_strings
        print("ApiData=" + apiData);
      }
      final jsonData1 = jsonEncode(apiData);
      final jsonData = jsonDecode(jsonData1);

      workOrderModel = workOrderModelFromJson(jsonData);
      if (kDebugMode) {
        print(jsonData.hashCode);
        print(jsonData.length);
        print(jsonData);
      }
      isLoading.value = false;
    } on PlatformException catch (e) {
      if (kDebugMode) {
        print("data==============1=");
        print(e.message);
      }
      showErrorMessage(e.message ?? "Failed to get data");
      // data = 'Failed to get data: ${e.message}';
    }

    // setState(() {
    //   apiData = data;
    // });
  }

/* -------------------------------------------------------------------------- */
/*                              getData                                       */
/* -------------------------------------------------------------------------- */
  getData() async {
    isLoading.value = true;
    final response = await listViewHelper.getDataDashboard();
    if (response.data != null) {
      workOrderModel = response.data!;
      isLoading.value = false;
    }
  }

/* -------------------------------------------------------------------------- */
/*                              getUpdateData                                       */
/* -------------------------------------------------------------------------- */
  getUpdateData() async {
    // ignore: prefer_typing_uninitialized_variables
    var apiData;

    try {
      isLoadingUpdate.value = true;
      apiData = await platform.invokeMethod('getDataFromAPI');
      if (kDebugMode) {
        print("data===============");
        // ignore: prefer_interpolation_to_compose_strings
        print("ApiData=" + apiData);
      }
      final jsonData1 = jsonEncode(apiData);
      final jsonData = jsonDecode(jsonData1);
      // print
      workOrderModel = workOrderModelFromJson(jsonData);
      isLoadingUpdate.value = false;
      isLoading.value = true;
      isLoading.value = false;
    } on PlatformException catch (e) {
      if (kDebugMode) {
        print("data==============1=");
        print(e.message);
      }
      showErrorMessage(e.message ?? "Failed to get data");
      // data = 'Failed to get data: ${e.message}';
    }
  }
}
