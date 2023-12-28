import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';
import 'package:work_order_app_flutter_native/resources/routes/app_routes.dart';
import 'controllers/binding/initial_binding.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
/* -------------------------------------------------------------------------- */
/*                             DeviceOrientation                              */
/* -------------------------------------------------------------------------- */
    SystemChrome.setPreferredOrientations(
        [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);
    return Sizer(builder: (context, orientation, deviceType) {
      return GetMaterialApp(
        debugShowCheckedModeBanner: false,
        initialBinding: createBindings(context),
        title: 'My App',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        getPages: AppRoutes.appRoutes(),
      );
    });
  }
}
