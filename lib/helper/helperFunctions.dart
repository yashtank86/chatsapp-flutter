import 'package:shared_preferences/shared_preferences.dart';

class HelperFunctions{
    static String sharedPreferenceUserLoggedInKey = "ISLOGGEDIN";
    static String sharedPreferenceUserNameKey = "USERNAMEKEY";
    static String sharedPreferenceUserEmailKey = "USEREMAILKEY";

    // save data to SharedPreference


    static Future<void>saveUserLoggedInSharedPreference(bool isUserLoggedIn) async {
        SharedPreferences preferences = await SharedPreferences.getInstance();
        return await preferences.setBool(sharedPreferenceUserLoggedInKey, isUserLoggedIn);
    }

    static Future<bool>saveUserNameSharedPreference(String userName) async {
        SharedPreferences preferences = await SharedPreferences.getInstance();
        return await preferences.setString(sharedPreferenceUserNameKey, userName);
    }

    static Future<void>saveUserEmailSharedPreference(String userEmail) async {
        SharedPreferences preferences = await SharedPreferences.getInstance();
        return await preferences.setString(sharedPreferenceUserEmailKey, userEmail);
    }

    // getting data from SharedPreference

    static Future<bool>getUserLoggedInSharedPreference() async {
        SharedPreferences preferences = await SharedPreferences.getInstance();
        return preferences.getBool(sharedPreferenceUserLoggedInKey);
    }

    static Future<String>getUserNameSharedPreference() async {
        SharedPreferences preferences = await SharedPreferences.getInstance();
        return preferences.getString(sharedPreferenceUserNameKey);
    }

    static Future<String>getUserEmailSharedPreference() async {
        SharedPreferences preferences = await SharedPreferences.getInstance();
        return preferences.getString(sharedPreferenceUserEmailKey);
    }


}