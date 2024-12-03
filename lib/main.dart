import 'package:flutter/material.dart';
import 'package:ukl_flutter/views/bioskop_view.dart';
import 'package:ukl_flutter/views/home_view.dart';
import 'package:ukl_flutter/views/login_view.dart';
import 'package:ukl_flutter/views/splash_screen.dart';
import 'package:ukl_flutter/views/tiket_view.dart';
import 'package:ukl_flutter/views/tiketku_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // Root widget of the app
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        initialRoute: '/',
        routes: {
          '/': (_) => SplashScreen(),
          '/l': (_) => LoginView(),
          '/h': (_) => HomeView(),
          '/b': (_) => BioskopView(),
          '/t': (_) => TiketView(),
          '/a': (_) => TiketkuView(),
        });
  }
}