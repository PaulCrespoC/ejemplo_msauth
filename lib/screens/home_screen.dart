import 'package:ejemplo_msauth/msal/msal.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeScreen extends GetView<MsalService> {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: const Center(
        child: Text('Inicio'),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => controller.login(),
        child: const Icon(Icons.add),
      ),
    );
  }
}
