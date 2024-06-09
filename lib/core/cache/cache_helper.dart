import 'package:shared_preferences/shared_preferences.dart';

class CacheHelper {
  static late SharedPreferences sharedPreferences;
  static Future<void> init() async {
    sharedPreferences = await SharedPreferences.getInstance();
  }

  static saveData({required String key, required dynamic value}) {
    if (value is bool) {
      return sharedPreferences.setBool(key, value);
    }
    if (value is String) {
      return sharedPreferences.setString(key, value);
    }

    if (value is int) {
      return sharedPreferences.setInt(key, value);
    }
    if (value is List<String>) {
      return sharedPreferences.setStringList(key, value);
    } else {
      return sharedPreferences.setDouble(key, value);
    }
  }

  static getData({required String key}) {
    return sharedPreferences.get(key);
  }

  Future<bool> clearData() {
    return sharedPreferences.clear();
  }
}
