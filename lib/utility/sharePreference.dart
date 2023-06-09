import 'package:shared_preferences/shared_preferences.dart';

void login() async {
  final prefs = await SharedPreferences.getInstance();
  prefs.setBool('login', true);
}

Future<bool?> loginCheck() async {
  final prefs = await SharedPreferences.getInstance();
  bool? loginSave = prefs.getBool('login');
  return loginSave;
}

void save(String email, String password, String rePassword,
    String phoneNumber) async {
  final prefs = await SharedPreferences.getInstance();
  prefs.setString('email', email);
  prefs.setString('password', password);
  prefs.setString('re_password', rePassword);
  prefs.setString('phone_number', phoneNumber);
}

void clear() async {
  final prefs = await SharedPreferences.getInstance();
  prefs.clear();
}

Future<String?> readEmail() async {
  final prefs = await SharedPreferences.getInstance();
  String? regEmail = prefs.getString('email');
  return regEmail;
}

Future<String?> readPassword() async {
  final prefs = await SharedPreferences.getInstance();
  String? password = prefs.getString('password');
  return password;
}
