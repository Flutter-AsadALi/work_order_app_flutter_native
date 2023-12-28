import 'package:flutter/material.dart';
import 'package:work_order_app_flutter_native/views/splash_view/splash_services.dart';

import '../../utils/images_path.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  SplashServices splashServices = SplashServices();

  @override
  void initState() {
    splashServices.isSplashToLogin();

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage(
                    AppImagesPath.splashImage,
                  ),
                  fit: BoxFit.cover),
            ),
            // child: labelsController.isLoading.value
            //     ? const LoadingIndicator()
            //     : const Center(),
          ),
        ],
      ),
    );
  }
}
