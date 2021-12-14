import 'package:ejemplo_msauth/msal/msal.dart';
import 'package:ejemplo_msauth/services/auth_service.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AuthScreen extends StatelessWidget {
  const AuthScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: const Center(
        child: Text('Auth'),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => getCurrentUser(),
        child: const Icon(Icons.account_circle),
      ),
    );
  }
}
