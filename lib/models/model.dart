// To parse this JSON data, do
//
//     final workOrderModel = workOrderModelFromJson(jsonString);

import 'dart:convert';

WorkOrderModel workOrderModelFromJson(String str) => WorkOrderModel.fromJson(json.decode(str));

String workOrderModelToJson(WorkOrderModel data) => json.encode(data.toJson());

class WorkOrderModel {
  bool? status;
  String? message;
  Data? data;

  WorkOrderModel({
    this.status,
    this.message,
    this.data,
  });

  factory WorkOrderModel.fromJson(Map<String, dynamic> json) => WorkOrderModel(
    status: json["status"],
    message: json["message"],
    data: json["data"] == null ? null : Data.fromJson(json["data"]),
  );

  Map<String, dynamic> toJson() => {
    "status": status,
    "message": message,
    "data": data?.toJson(),
  };
}

class Data {
  List<WorkOrder>? workOrders;

  Data({
    this.workOrders,
  });

  factory Data.fromJson(Map<String, dynamic> json) => Data(
    workOrders: json["work_orders"] == null ? [] : List<WorkOrder>.from(json["work_orders"]!.map((x) => WorkOrder.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "work_orders": workOrders == null ? [] : List<dynamic>.from(workOrders!.map((x) => x.toJson())),
  };
}

class WorkOrder {
  int? recordId;
  String? projectId;
  String? workOrder;
  String? toDoFilter;
  String? area;
  String? assigned;
  String? responsibleAgent;
  String? location;
  String? activity;
  String? scheduledDate;
  String? state;
  String? pickedTime;
  String? arrivedTime;
  String? coordinates;
  // ImageArray? imageArray;

  WorkOrder({
    this.recordId,
    this.projectId,
    this.workOrder,
    this.toDoFilter,
    this.area,
    this.assigned,
    this.responsibleAgent,
    this.location,
    this.activity,
    this.scheduledDate,
    this.state,
    this.pickedTime,
    this.arrivedTime,
    this.coordinates,
    // this.imageArray,
  });

  factory WorkOrder.fromJson(Map<String, dynamic> json) => WorkOrder(
    recordId: json["record_id"],
    projectId: json["project_id"],
    workOrder: json["work_order"],
    toDoFilter: json["to_do_filter"],
    area: json["area"],
    assigned: json["assigned"],
    responsibleAgent: json["responsible_agent"],
    location: json["location"],
    activity: json["activity"],
    scheduledDate: json["scheduled_date"],
    state: json["state"],
    pickedTime: json["picked_time"],
    arrivedTime: json["arrived_time"],
    coordinates: json["coordinates"],
    // imageArray: json["image_array"] == null ? null : ImageArray.fromJson(json["image_array"]),
  );

  Map<String, dynamic> toJson() => {
    "record_id": recordId,
    "project_id": projectId,
    "work_order": workOrder,
    "to_do_filter": toDoFilter,
    "area": area,
    "assigned": assigned,
    "responsible_agent": responsibleAgent,
    "location": location,
    "activity": activity,
    "scheduled_date": scheduledDate,
    "state": state,
    "picked_time": pickedTime,
    "arrived_time": arrivedTime,
    "coordinates": coordinates,
    // "image_array": imageArray?.toJson(),
  };
}

// class ImageArray {
//   List<dynamic>? beforeImages;
//   List<dynamic>? afterImages;
//
//   ImageArray({
//     this.beforeImages,
//     this.afterImages,
//   });
//
//   factory ImageArray.fromJson(Map<String, dynamic> json) => ImageArray(
//     beforeImages: json["before_images"] == null ? [] : List<dynamic>.from(json["before_images"]!.map((x) => x)),
//     afterImages: json["after_images"] == null ? [] : List<dynamic>.from(json["after_images"]!.map((x) => x)),
//   );
//
//   Map<String, dynamic> toJson() => {
//     "before_images": beforeImages == null ? [] : List<dynamic>.from(beforeImages!.map((x) => x)),
//     "after_images": afterImages == null ? [] : List<dynamic>.from(afterImages!.map((x) => x)),
//   };
// }
