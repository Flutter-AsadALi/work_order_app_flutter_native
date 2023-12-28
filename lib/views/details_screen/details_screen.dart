import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';
import '../../controllers/list_view_controller.dart';
import '../../models/model.dart';
import '../../utils/app_bar.dart';
import '../../utils/app_colors.dart';
import '../../utils/app_label.dart';
import '../../utils/app_text_style.dart';
import '../../utils/images_path.dart';
import '../../utils/loading_indicator.dart';

// ignore: must_be_immutable
class DetailsScreen extends StatefulWidget {
  late WorkOrder workOrder;

  DetailsScreen({super.key, required this.workOrder});

  @override
  State<DetailsScreen> createState() => _DetailsScreenState();
}

class _DetailsScreenState extends State<DetailsScreen> {
  ListViewController listViewController = Get.find();

  @override
  void initState() {
    log("widget.workOrder.toString()====");
    log(widget.workOrder.projectId.toString());

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PrimaryAppBar(
        title: "Details",
        onBackPressed: () {
          Get.back();
        },
      ),
      body: SafeArea(
        child: Container(
          height: 100.h,
          width: 100.w,
          decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage(
                  AppImagesPath.backgroundImage,
                ),
                fit: BoxFit.cover),
          ),
          child: Obx(
            () {
              return listViewController.isLoading.value
                  ? const Center(
                      child: LoadingIndicator(),
                    )
                  : SingleChildScrollView(
                      child: Container(
                        padding: EdgeInsets.symmetric(
                            vertical: 1.h, horizontal: 2.h),
                        child: Card(
                          elevation: 50,
                          shadowColor: Colors.white,
                          color: Colors.white70,
/* -------------------------------------------------------------------------- */
/*                              Details Screens                               */
/* -------------------------------------------------------------------------- */
                          child: Container(
                            padding: EdgeInsets.symmetric(
                                vertical: 2.h, horizontal: 3.h),
                            child: Column(
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    Container(
                                      decoration: BoxDecoration(
                                          color: AppColors.lightGreen,
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(1.h))),
                                      padding: EdgeInsets.symmetric(
                                          vertical: 1.h, horizontal: 3.h),
                                      child: Text(
                                        "${widget.workOrder.state}",
                                        style: AppTextStyle.boldWhite10,
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 2.h,
                                ),
                                Row(
                                  children: [
                                    Text(
                                      "${AppLabel.projectID}:",
                                      style: AppTextStyle.boldGrey12,
                                    ),
                                    Expanded(
                                      child: Text(
                                        widget.workOrder.projectId ?? "",
                                        maxLines: 2,
                                        style: AppTextStyle.regularGrey12,
                                      ),
                                    )
                                  ],
                                ),
                                const Divider(),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  children: [
                                    Text(
                                      "${AppLabel.workOrder}:",
                                      style: AppTextStyle.boldGrey12,
                                    ),
                                    Expanded(
                                      child: Text(
                                        widget.workOrder.workOrder ?? "",
                                        maxLines: 2,
                                        style: AppTextStyle.regularGrey12,
                                      ),
                                    )
                                  ],
                                ),

                                SizedBox(
                                  height: 2.h,
                                ),
                                Row(
                                  children: [
                                    Text(
                                      "${AppLabel.recordId}:",
                                      style: AppTextStyle.boldGrey12,
                                    ),
                                    Expanded(
                                      child: Text(
                                        widget.workOrder.recordId.toString(),
                                        maxLines: 2,
                                        style: AppTextStyle.regularGrey12,
                                      ),
                                    )
                                  ],
                                ),
                                SizedBox(
                                  height: 2.h,
                                ),
                                Row(
                                  children: [
                                    Text(
                                      "${AppLabel.scheduledData}:",
                                      style: AppTextStyle.boldGrey12,
                                    ),
                                    Expanded(
                                      child: Text(
                                        widget.workOrder.scheduledDate ?? "",
                                        maxLines: 2,
                                        style: AppTextStyle.regularGrey12,
                                      ),
                                    )
                                  ],
                                ),
                                SizedBox(
                                  height: 2.h,
                                ),

                                Row(
                                  children: [
                                    Text(
                                      "${AppLabel.toDoFilter}:",
                                      style: AppTextStyle.boldGrey12,
                                    ),
                                    Expanded(
                                      child: Text(
                                        widget.workOrder.toDoFilter ?? "",
                                        maxLines: 2,
                                        style: AppTextStyle.regularGrey12,
                                      ),
                                    )
                                  ],
                                ),
                                SizedBox(
                                  height: 2.h,
                                ),
                                Row(
                                  children: [
                                    Text(
                                      "${AppLabel.assigned}:",
                                      style: AppTextStyle.boldGrey12,
                                    ),
                                    Expanded(
                                      child: Text(
                                        widget.workOrder.assigned ?? "",
                                        maxLines: 2,
                                        style: AppTextStyle.regularGrey12,
                                      ),
                                    )
                                  ],
                                ),
                                SizedBox(
                                  height: 2.h,
                                ),
                                Row(
                                  children: [
                                    Text(
                                      "${AppLabel.responsibleAgent}:",
                                      style: AppTextStyle.boldGrey12,
                                    ),
                                    Expanded(
                                      child: Text(
                                        widget.workOrder.responsibleAgent ?? "",
                                        maxLines: 2,
                                        style: AppTextStyle.regularGrey12,
                                      ),
                                    )
                                  ],
                                ),
                                SizedBox(
                                  height: 2.h,
                                ),
                                Row(
                                  children: [
                                    Text(
                                      "${AppLabel.location}:",
                                      style: AppTextStyle.boldGrey12,
                                    ),
                                    Expanded(
                                      child: Text(
                                        widget.workOrder.location ?? "",
                                        maxLines: 2,
                                        style: AppTextStyle.regularGrey12,
                                      ),
                                    )
                                  ],
                                ),
                                SizedBox(
                                  height: 2.h,
                                ),
                                Row(
                                  children: [
                                    Text(
                                      "${AppLabel.activity}:",
                                      style: AppTextStyle.boldGrey12,
                                    ),
                                    Expanded(
                                      child: Text(
                                        widget.workOrder.activity ?? "",
                                        maxLines: 2,
                                        style: AppTextStyle.regularGrey12,
                                      ),
                                    )
                                  ],
                                ),
                                
                                SizedBox(
                                  height: 2.h,
                                ),
                                Row(
                                  children: [
                                    Text(
                                      "${AppLabel.pickedTime}:",
                                      style: AppTextStyle.boldGrey12,
                                    ),
                                    Expanded(
                                      child: Text(
                                        widget.workOrder.pickedTime ?? "",
                                        maxLines: 2,
                                        style: AppTextStyle.regularGrey12,
                                      ),
                                    )
                                  ],
                                ),
                                SizedBox(
                                  height: 2.h,
                                ),
                                Row(
                                  children: [
                                    Text(
                                      "${AppLabel.arrivedTime}:",
                                      style: AppTextStyle.boldGrey12,
                                    ),
                                    Expanded(
                                      child: Text(
                                        widget.workOrder.arrivedTime ?? "",
                                        maxLines: 2,
                                        style: AppTextStyle.regularGrey12,
                                      ),
                                    )
                                  ],
                                ),
                              ],
                            ), //Padding
                          ), //SizedBox
                        ),
                      ),
                    );
            },
          ),
        ),
      ),
    );
  }
}
