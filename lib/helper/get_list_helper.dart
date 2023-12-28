import 'dart:developer';

import '../models/api_response/api_response.dart';
import '../models/model.dart';
import '../network_client/network_clients.dart';

class ListViewHelper {
  final NetworkClient _networkClient;
  ListViewHelper(this._networkClient);

  ///
  ///
  ///
  Future<ApiResponse<WorkOrderModel>> getDataDashboard() async {
    log("DashboardHelper");
    final resp = await _networkClient.get<WorkOrderModel>('/download_work_order');

    if (resp.isSuccess) {
      final result = resp.rawData;
      final data = WorkOrderModel.fromJson(result);
      log(data.toString());
      return resp.copyWith(data: data);
    } else {
      return resp;
    }
  }



///
///
///
}
