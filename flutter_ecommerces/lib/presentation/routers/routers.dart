
import 'package:flutter_ecommerces/presentation/onboard/splashscreen.dart';
import 'package:get/route_manager.dart';

class Routers {

  static const String main = "/";
  static const String splashScreen = "/splashscreen";

  final List<GetPage> routers = [
    GetPage(name: Routers.splashScreen, page: () => SplashScreen()),
  ];
}