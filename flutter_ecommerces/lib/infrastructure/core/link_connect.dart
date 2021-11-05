import 'package:flutter_dotenv/flutter_dotenv.dart';

class Urls {
  // static final String baseUrl = dotenv.get('BASE_URL');
  static final String baseUrl = "https://fakestoreapi.com";
}

class UrlPath {
  static const String login = '/auth/login';
  static const String register = '/users';
  static const String getProfile = "/users/";
  static const String updateProfile = "/users/";
  static const String viewData = "/products/";
}
