import 'package:flutter_dotenv/flutter_dotenv.dart';

class Urls {
  static final String baseUrl = dotenv.get('BASE_URL');
}

class UrlPath {
  static const String login = '/auth/login';
  static const String register = '/users';
}
