import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_ecommerces/presentation/routers/routers.dart';
import 'package:get/route_manager.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hive_flutter/hive_flutter.dart';

void main() async {
  await Hive.initFlutter();
  await dotenv.load();
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: "Flutter E-Commerce",
      debugShowCheckedModeBanner: false,
      theme : ThemeData(
        textTheme: GoogleFonts.lateefTextTheme(),
        primarySwatch: Colors.blue,
        ),
        getPages: Routers().routers,
        initialRoute: Routers.splashScreen,
    );
  }
}