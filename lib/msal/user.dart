import 'dart:js' show JsObject;

class User {

  String? tenantId;
  String? name;
  String? username;

  User({this.tenantId, this.name, this.username});

  static User? fromJson(JsObject data) {
    return data['tenantId'] != null ? User(
      tenantId: data['tenantId'],
      name: data['name'],
      username: data['username']
    ) : null;
  }

}