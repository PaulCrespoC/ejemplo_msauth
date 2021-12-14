import 'package:ejemplo_msauth/screens/auth_screen.dart';
import 'package:ejemplo_msauth/screens/home_screen.dart';
import 'package:flutter/material.dart';

class Navigation {
  // 'route': (BuildContext context) => null,
  static final Map<String, WidgetBuilder> routes = {
    '/': (context) => const HomeScreen(),
    '/auth': (context) => const AuthScreen(),
  };
}
