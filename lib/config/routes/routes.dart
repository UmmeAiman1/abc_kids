// ignore_for_file: constant_identifier_names

import 'package:abc_kids/view/screens/alphabet/alphabet_screen.dart';
import 'package:abc_kids/view/screens/launch/intro_screen.dart';
import 'package:abc_kids/view/screens/tracing/tracing_screen.dart';
import 'package:get/get.dart';

import '../../view/screens/launch/splash_screen.dart';

class AppRoutes {
  static final List<GetPage> pages = [
    GetPage(
      name: AppLinks.splash,
      page: () => SplashScreen(),
    ),
     GetPage(
      name: AppLinks.intro,
      page: () =>  const IntroScreen(),
    ),
     GetPage(
      name: AppLinks.alphabet,
      page: () => const  AlphabetScreen(),
    ),
  
    GetPage(name: AppLinks.tracing, 
    page: () =>  TracingScreen()),
  
  ];
}

class AppLinks {
  static const splash = '/splash';
   static const intro = '/intro';
   static const alphabet = '/alphabet';
     static const tracing = '/tracing';
}
