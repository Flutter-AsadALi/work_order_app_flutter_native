import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';
import 'app_colors.dart';
import 'app_fonts.dart';

class AppTextStyle {
  /* -------------------------------------------------------------------------- */
  /*                             Nexa Regular Black                             */
  /* -------------------------------------------------------------------------- */

  static TextStyle regularBlack10 = TextStyle(
    color: AppColors.black,
    fontSize: MediaQuery.of(Get.context!).size.width > 500 ? 8.0.sp : 10.0.sp,
    fontFamily: AppFonts.nexaRegular,
  );
  static TextStyle regularBlack11 = TextStyle(
    color: AppColors.black,
    fontSize: MediaQuery.of(Get.context!).size.width > 500 ? 9.0.sp : 11.0.sp,
    fontFamily: AppFonts.nexaRegular,
  );
  static TextStyle regularBlack12 = TextStyle(
    color: AppColors.black,
    fontSize: MediaQuery.of(Get.context!).size.width > 500 ? 10.0.sp : 12.0.sp,
    fontFamily: AppFonts.nexaRegular,
  );
  static TextStyle regularBlack13 = TextStyle(
    color: AppColors.black,
    fontSize: MediaQuery.of(Get.context!).size.width > 500 ? 11.0.sp : 13.0.sp,
    fontFamily: AppFonts.nexaRegular,
  );
  static TextStyle regularBlack14 = TextStyle(
    color: AppColors.black,
    fontSize: MediaQuery.of(Get.context!).size.width > 500 ? 12.0.sp : 14.0.sp,
    fontFamily: AppFonts.nexaRegular,
  );

  /* -------------------------------------------------------------------------- */
  /*                               Nexa Bold Black                              */
  /* -------------------------------------------------------------------------- */

  static TextStyle boldBlack10 = TextStyle(
    color: AppColors.black,
    fontSize: MediaQuery.of(Get.context!).size.width > 500 ? 8.0.sp : 10.0.sp,
    fontFamily: AppFonts.nexaBold,
  );
  static TextStyle boldBlack11 = TextStyle(
    color: AppColors.black,
    fontSize: MediaQuery.of(Get.context!).size.width > 500 ? 9.0.sp : 11.0.sp,
    fontFamily: AppFonts.nexaBold,
  );
  static TextStyle boldBlack12 = TextStyle(
    color: AppColors.black,
    fontSize: MediaQuery.of(Get.context!).size.width > 500 ? 10.0.sp : 12.0.sp,
    fontFamily: AppFonts.nexaBold,
  );
  static TextStyle boldBlack13 = TextStyle(
    color: AppColors.black,
    fontSize: MediaQuery.of(Get.context!).size.width > 500 ? 11.0.sp : 13.0.sp,
    fontFamily: AppFonts.nexaBold,
  );
  static TextStyle boldBlack14 = TextStyle(
    color: AppColors.black,
    fontSize: MediaQuery.of(Get.context!).size.width > 500 ? 12.0.sp : 14.0.sp,
    fontFamily: AppFonts.nexaBold,
  );

  /* -------------------------------------------------------------------------- */
  /*                             Nexa Regular White                             */
  /* -------------------------------------------------------------------------- */

  static TextStyle regularWhite10 = TextStyle(
    color: AppColors.white,
    fontSize: MediaQuery.of(Get.context!).size.width > 500 ? 8.0.sp : 10.0.sp,
    fontFamily: AppFonts.nexaRegular,
  );
  static TextStyle regularWhite11 = TextStyle(
    color: AppColors.white,
    fontSize: MediaQuery.of(Get.context!).size.width > 500 ? 9.0.sp : 11.0.sp,
    fontFamily: AppFonts.nexaRegular,
  );
  static TextStyle regularWhite12 = TextStyle(
    color: AppColors.white,
    fontSize: MediaQuery.of(Get.context!).size.width > 500 ? 10.0.sp : 12.0.sp,
    fontFamily: AppFonts.nexaRegular,
  );
  static TextStyle regularWhite13 = TextStyle(
    color: AppColors.white,
    fontSize: MediaQuery.of(Get.context!).size.width > 500 ? 11.0.sp : 13.0.sp,
    fontFamily: AppFonts.nexaRegular,
  );
  static TextStyle regularWhite14 = TextStyle(
    color: AppColors.white,
    fontSize: MediaQuery.of(Get.context!).size.width > 500 ? 12.0.sp : 14.0.sp,
    fontFamily: AppFonts.nexaRegular,
  );
  /* -------------------------------------------------------------------------- */
  /*                               Nexa Bold White                              */
  /* -------------------------------------------------------------------------- */

  static TextStyle boldWhite10 = TextStyle(
    color: AppColors.white,
    fontSize: MediaQuery.of(Get.context!).size.width > 500 ? 8.0.sp : 10.0.sp,
    fontFamily: AppFonts.nexaBold,
  );
  static TextStyle boldWhite11 = TextStyle(
    color: AppColors.white,
    fontSize: MediaQuery.of(Get.context!).size.width > 500 ? 9.0.sp : 11.0.sp,
    fontFamily: AppFonts.nexaBold,
  );
  static TextStyle boldWhite12 = TextStyle(
    color: AppColors.white,
    fontSize: MediaQuery.of(Get.context!).size.width > 500 ? 10.0.sp : 12.0.sp,
    fontFamily: AppFonts.nexaBold,
  );
  static TextStyle boldWhite13 = TextStyle(
    color: AppColors.white,
    fontSize: MediaQuery.of(Get.context!).size.width > 500 ? 11.0.sp : 13.0.sp,
    fontFamily: AppFonts.nexaBold,
  );
  static TextStyle boldWhite14 = TextStyle(
    color: AppColors.white,
    fontSize: MediaQuery.of(Get.context!).size.width > 500 ? 12.0.sp : 14.0.sp,
    fontFamily: AppFonts.nexaBold,
  );
  /* -------------------------------------------------------------------------- */
  /*                           Nexa Regular Light Grey                          */
  /* -------------------------------------------------------------------------- */

  static TextStyle regularGrey10 = TextStyle(
    color: AppColors.grey,
    fontSize: MediaQuery.of(Get.context!).size.width > 500 ? 8.0.sp : 10.0.sp,
    fontFamily: AppFonts.nexaRegular,
  );
  static TextStyle regularGrey11 = TextStyle(
    color: AppColors.grey,
    fontSize: MediaQuery.of(Get.context!).size.width > 500 ? 9.0.sp : 11.0.sp,
    fontFamily: AppFonts.nexaRegular,
  );
  static TextStyle regularGrey12 = TextStyle(
    color: AppColors.grey,
    overflow: TextOverflow.ellipsis,
    fontSize: MediaQuery.of(Get.context!).size.width > 500 ? 10.0.sp : 12.0.sp,
    fontFamily: AppFonts.nexaRegular,
  );
  static TextStyle regularGrey13 = TextStyle(
    color: AppColors.grey,
    fontSize: MediaQuery.of(Get.context!).size.width > 500 ? 11.0.sp : 13.0.sp,
    fontFamily: AppFonts.nexaRegular,
  );
  static TextStyle regularGrey14 = TextStyle(
    color: AppColors.grey,
    fontSize: MediaQuery.of(Get.context!).size.width > 500 ? 12.0.sp : 14.0.sp,
    fontFamily: AppFonts.nexaRegular,
  );

  /* -------------------------------------------------------------------------- */
  /*                               Nexa Bold  Grey                              */
  /* -------------------------------------------------------------------------- */

  static TextStyle boldGrey10 = TextStyle(
    color: AppColors.grey,
    fontSize: MediaQuery.of(Get.context!).size.width > 500 ? 8.0.sp : 10.0.sp,
    fontFamily: AppFonts.nexaBold,
  );
  static TextStyle boldGrey11 = TextStyle(
    color: AppColors.grey,
    fontSize: MediaQuery.of(Get.context!).size.width > 500 ? 9.0.sp : 11.0.sp,
    fontFamily: AppFonts.nexaBold,
  );
  static TextStyle boldGrey12 = TextStyle(
    color: AppColors.grey,
    fontSize: MediaQuery.of(Get.context!).size.width > 500 ? 10.0.sp : 12.0.sp,
    fontFamily: AppFonts.nexaBold,
  );
  static TextStyle boldGrey13 = TextStyle(
    color: AppColors.grey,
    fontSize: MediaQuery.of(Get.context!).size.width > 500 ? 11.0.sp : 13.0.sp,
    fontFamily: AppFonts.nexaBold,
  );
  static TextStyle boldGrey14 = TextStyle(
    color: AppColors.grey,
    fontSize: MediaQuery.of(Get.context!).size.width > 500 ? 12.0.sp : 14.0.sp,
    fontFamily: AppFonts.nexaBold,
  );


}
