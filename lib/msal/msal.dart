import 'dart:js' as js;

login() {
  js.context.callMethod('login', []);
}

getCurrentUser() {
  var data = js.JsObject.fromBrowserObject(js.context.callMethod('getCurrentUser', []));
  print(data);
}