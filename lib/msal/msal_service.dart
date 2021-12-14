import 'dart:js' as js;
import 'package:get/get.dart';
import 'user.dart';

class MsalService extends GetxController {

  final Rx<User> _user = Rx<User>(User());

  static initialize() {
    Get.put(MsalService());
  }

  @override
  void onInit() {
    super.onInit();
    js.context.callMethod('msalInitialize');
    getCurrentUser();
  }

  login() {
    js.context.callMethod('login', []);
  }

  getCurrentUser() {
    try {
      User? user = User.fromJson(js.JsObject.fromBrowserObject(js.context.callMethod('getCurrentUser', [])));
      _user.value = user ?? User();
    } catch (e) {
      _user.value = User();
    } finally {
      _user.refresh();
    }
  }
}
