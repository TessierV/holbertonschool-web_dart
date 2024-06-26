import '1-util.dart';
import 'dart:convert';

Future<String> getUserId() async {
  String getId = await fetchUserData();
  return jsonDecode(getId)["id"];
}
