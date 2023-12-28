import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';
import 'package:sizer/sizer.dart';
import '../controllers/list_view_controller.dart';
import '../resources/routes/routes_name.dart';
import '../utils/app_bar.dart';
import '../utils/app_text_style.dart';
import '../utils/images_path.dart';
import '../utils/loading_indicator.dart';
import '../utils/app_colors.dart';
import '../utils/app_label.dart';

class ListOrderView extends StatefulWidget {
  const ListOrderView({super.key});

  @override
  State<ListOrderView> createState() => _ListOrderViewState();
}

class _ListOrderViewState extends State<ListOrderView> {
/* -------------------------------------------------------------------------- */
/*                              Controller                                    */
/* -------------------------------------------------------------------------- */
  ListViewController listViewController = Get.put(ListViewController());

/* -------------------------------------------------------------------------- */
/*                              initState                                     */
/* -------------------------------------------------------------------------- */
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PrimaryAppBar(
        title: "My List",
        showBackArrowIcon: false,
        actions: [
          IconButton(
            onPressed: () {
              listViewController.getUpdateData();
            },
            icon: const Icon(
              Icons.refresh,
            ),
          )
        ],
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
        child: Obx(() {
          return listViewController.isLoading.value
              ? const Center(
                  child: LoadingIndicator(),
                )
              : RefreshIndicator(
                  displacement: 120,
                  triggerMode: RefreshIndicatorTriggerMode.onEdge,
                  onRefresh: () async {
                    listViewController.getUpdateData();
                  },
                  child: ModalProgressHUD(
                    inAsyncCall: listViewController.isLoadingUpdate.value,
                    progressIndicator: const LoadingIndicator(),
                    child: Container(
                      padding:
                          EdgeInsets.symmetric(vertical: 1.h, horizontal: 2.h),
                      child: ListView.separated(
                          shrinkWrap: true,
                          itemCount: listViewController
                              .workOrderModel.data!.workOrders!.length,
                          separatorBuilder: (context, index) {
                            return SizedBox(height: 3.h);
                          },
/* -------------------------------------------------------------------------- */
/*                              Builder Screens                               */
/* -------------------------------------------------------------------------- */
                          itemBuilder: (context, index) {
                            var dataValue = listViewController
                                .workOrderModel.data!.workOrders![index];
                            return InkWell(
                              onTap: () {
                                Get.toNamed(RoutesName.listDetailsView,
                                    arguments: dataValue);
                              },
                              child: Card(
                                elevation: 50,
                                shadowColor: Colors.white,
                                color: Colors.white70,
                                child: Container(
                                  padding: EdgeInsets.symmetric(
                                      vertical: 2.h, horizontal: 3.h),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.end,
                                        children: [
                                          Container(
                                            decoration: BoxDecoration(
                                                color: AppColors.lightGreen,
                                                borderRadius: BorderRadius.all(
                                                    Radius.circular(1.h))),
                                            padding: EdgeInsets.symmetric(
                                                vertical: 1.h, horizontal: 3.h),
                                            child: Text(
                                              "${dataValue.state}",
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
                                              dataValue.projectId ?? "",
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
                                              dataValue.workOrder ?? "",
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
                                            "${AppLabel.area}:",
                                            style: AppTextStyle.boldGrey12,
                                          ),
                                          Expanded(
                                            child: Text(
                                              dataValue.area ?? "",
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
                                              dataValue.scheduledDate ?? "",
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
                            );
                          }),
                    ),
                  ),
                );
        }),
      )),
    );
  }
}
