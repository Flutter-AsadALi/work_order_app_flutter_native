import 'package:get/route_manager.dart';
import 'package:work_order_app_flutter_native/resources/routes/routes_name.dart';

import '../../views/details_screen/details_screen.dart';
import '../../views/list_order_view.dart';
import '../../views/splash_view/splash_view.dart';

class AppRoutes {
  static appRoutes() => [
        GetPage(
            name: RoutesName.splashView,
            page: () => const SplashView(),
            transition: Transition.leftToRightWithFade,
            transitionDuration: const Duration(milliseconds: 250)),
        GetPage(
            name: RoutesName.listView,
            page: () => const ListOrderView(),
            transition: Transition.leftToRightWithFade,
            transitionDuration: const Duration(milliseconds: 250)),
        GetPage(
            name: RoutesName.listDetailsView,
            page: () =>  DetailsScreen(workOrder: Get.arguments,),
            transition: Transition.leftToRightWithFade,
            transitionDuration: const Duration(milliseconds: 250)),
      ];
}
