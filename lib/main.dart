import 'package:dims_config/dims_config.dart';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:personal_site/helpers/theme.dart';
import 'package:personal_site/views/home_view.dart';

void main() {
  initailizeDims(
    // The Hieght of mobile device that the project is been debugging on; User MediaQuery.of(context).size.height to get the height after start debugging the project on the device
    debuggingMobileDeviceHeight: 744,
    // The Width of mobile device that the project is been debugging on; User MediaQuery.of(context).size.height to get the height after start debugging the project on the device
    debuggingMobileDeviceWidth: 500,
    // The Height of tablet device that the project is been debugging on; User MediaQuery.of(context).size.height to get the height after start debugging the project on the device
    debuggingTabletDeviceHeight: 744,
    // The Width of tablet device that the project is been debugging on; User MediaQuery.of(context).size.height to get the height after start debugging the project on the device
    debuggingTabletDeviceWidth: 767.2,
    // The Hieght of desktop device that the project is been debugging on; User MediaQuery.of(context).size.height to get the height after start debugging the project on the device
    debuggingDesktopDeviceHeight: 753.6,
    // The Width of desktop device that the project is been debugging on; User MediaQuery.of(context).size.height to get the height after start debugging the project on the device
    debuggingDesktopDeviceWidth: 1536,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Amr Darwish',
      theme: getTheme(),
      debugShowCheckedModeBanner: false,
      home: HomeView(),
    );
  }
}
