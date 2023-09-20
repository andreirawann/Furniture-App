import 'package:bwaspace/pages/category_page.dart';
import 'package:bwaspace/pages/detail_page.dart';
import 'package:bwaspace/pages/home_page.dart';
import 'package:bwaspace/pages/onboarding_page.dart';
import 'package:bwaspace/pages/profile_page.dart';
import 'package:bwaspace/pages/search_page.dart';
import 'package:bwaspace/pages/search_result_page.dart';
import 'package:bwaspace/pages/signin_page.dart';
import 'package:bwaspace/pages/splash_page.dart';
import 'package:bwaspace/pages/wishlist_page.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => SplashPage(),
        '/onboarding': (context) => OnboardingPage(),
        '/sign-in': (context) => SignInPage(),
        '/home': (context) => HomePage(),
        '/search': (context) => SearchPage(),
        '/search-result': (context) => SearchResultPage(),
        '/category': (context) => CategoryPage(),
        '/wishlist': (context) => WishlistPage(),
        '/profile': (context) => ProfilePage(),
        '/detail': (context) => DetailPage(),
      },
    );
  }
}
