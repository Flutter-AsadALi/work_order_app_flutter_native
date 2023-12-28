import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import 'app_colors.dart';
import 'app_text_style.dart';
import 'images_path.dart';

class PrimaryAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String? title;
  final VoidCallback? onBackPressed;
  final bool centerTitle;
  final bool showBackArrowIcon;
  final double elevation;
  final List<Widget>? actions;

  const PrimaryAppBar({
    Key? key,
    this.title,
    this.onBackPressed,
    this.centerTitle = true,
    this.showBackArrowIcon = true,
    this.elevation = 1.0,
    this.actions,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    double setSize = 10.h;
    if (screenSize.width <= 500) {
      setSize = 12.h;
    } else {
      setSize = 8.h;
    }

    return SizedBox(
      height: setSize,
      width: double.infinity,
      child: AppBar(
        elevation: elevation,
        // ignore: avoid_unnecessary_containers
        flexibleSpace: Container(
         
          child: Image(
            image: AssetImage(
              AppImagesPath.appBar,
            ),
            fit: BoxFit.cover,
          ),
        ),
        title: FittedBox(
          child: Text(
            title ?? '',
            style: AppTextStyle.boldWhite14,
          ),
        ),
        centerTitle: centerTitle,
        leading: showBackArrowIcon
            ? GestureDetector(
          onTap: onBackPressed,
          child: Icon(
            Icons.keyboard_backspace,
            color: AppColors.white,
            size: 3.5.h,
          ),
        )
            : Container(),
        actions:actions,

      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
