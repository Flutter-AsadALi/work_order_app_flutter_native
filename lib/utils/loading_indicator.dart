import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import '../resources/session_controller/session_controller.dart';

class LoadingIndicator extends StatelessWidget {
  const LoadingIndicator({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        width: 4.0.h,
        height: 4.0.h,
        child: CircularProgressIndicator(
          color: SessionController.themeLightColor,
        ),
      ),
    );
  }
}
