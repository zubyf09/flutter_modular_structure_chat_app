import 'dart:convert';
import 'package:shared_preferences/shared_preferences.dart';


import '../core.dart';

class PreferencesHelper {
  static SharedPreferences prefs;

  static Future<dynamic> _getInstance() async =>
      prefs = await SharedPreferences.getInstance();

  static Future<bool> savePreferences(String key, String data) async {
    await _getInstance();
    return prefs.setString(key, data);
  }

  static Future<bool> deletePreferences(String key) async {
    await _getInstance();
    return prefs.remove(key);
  }

  static Future<String> getPreferences(String key) async {
    await _getInstance();
    return prefs.getString(key) ?? null;
  }

}

class PreferencesKey {
  static String token = "_token";
  static String location = "_location";
  static String zone = "_zone";
  static String config = "src";
  static String addressId = "addressId";
  static String currentAddress = "current_address";
  static String deliveryAddress = "deliveryAddress";
  static String isLogin = "isLogin";
  static String isDelivery = "isDelivery";
  static String profileData = "profile";
  static String signUp = "signUp";
  static String storeId = "storeId";
  static String fcmToken = "_fcmToken";
  static String signUpRequestKey = "signUpRequest";
  static String cartIdKey = "cartId";
  static String walletKey = "wallet";
  static String zoneKey = 'zone';
  static String user = "user";
}
