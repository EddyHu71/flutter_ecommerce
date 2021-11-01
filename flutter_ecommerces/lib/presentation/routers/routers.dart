import 'package:flutter_ecommerces/presentation/home/home_page.dart';
import 'package:flutter_ecommerces/presentation/login/login_page.dart';
import 'package:flutter_ecommerces/presentation/onboard/onboard.dart';
import 'package:flutter_ecommerces/presentation/onboard/splashscreen.dart';
import 'package:flutter_ecommerces/presentation/register/register_page.dart';
import 'package:get/route_manager.dart';

class Routers {
  static const String main = "/";
  static const String splashScreen = "/splashscreen";
  static const String home = "/home";
  static const String onboard = "/onboard";
  static const String login = "/login";
  static const String register = "/register";

  final List<GetPage> routers = [
    GetPage(name: Routers.splashScreen, page: () => SplashScreen()),
    GetPage(name: Routers.onboard, page: () => OnBoard()),
    GetPage(name: Routers.home, page: () => HomePage()),
    GetPage(name: Routers.register, page: () => RegisterPage()),
    GetPage(name: Routers.login, page: () => LoginPage()),
  ];
}
