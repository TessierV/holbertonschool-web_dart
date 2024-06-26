import '3-util.dart';
import 'dart:convert';

Future<String> greetUser() async {
  try {
    String user = await fetchUserData();
    String username = jsonDecode(user)["username"];
    return "Hello $username";
  } catch (error) {
    return "error caught: $error";
  }
}

Future<String> loginUser() async {
  try {
    bool isLoggedIn = await checkCredentials();
    print("There is a user: $isLoggedIn");
    return isLoggedIn ? await greetUser() : "Wrong credentials";
  } catch (error) {
    return "error caught: $error";
  }
}
