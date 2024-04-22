import 'dart:convert';

import 'package:shared_preferences/shared_preferences.dart';
import 'package:talent_smart/constant.dart';
import 'package:talent_smart/models/api_response.dart';
import 'package:http/http.dart' as http;
import 'package:talent_smart/models/users.dart';

Future<ApiResponse> login(String email, String password) async {
  ApiResponse apiResponse = ApiResponse();
  try {
    final response = await http.post(Uri.parse(loginURL),
        headers: {'Accept': 'application/json'},
        body: {'email': email, 'password': password});
    switch (response.statusCode) {
      case 200:
        apiResponse.data = Users.fromJson(jsonDecode(response.body));
        break;
      case 404:
        final errors = jsonDecode(response.body)['data'];
        apiResponse.error = errors[errors.keys.elementAt(0)][0];
        break;
      default:
        apiResponse.error = somethingWentWrong;
        break;
    }
  } catch (e) {
    apiResponse.error = serverError;
  }

  return apiResponse;
}

Future<ApiResponse> register(String email, String password, String pwConfirm, String username) async {
  ApiResponse apiResponse = ApiResponse();
  try {
    final response = await http.post(Uri.parse(regURL), headers: {
      'Accept': 'application/json'
    }, body: {
      'email': email,
      'username': username,
      'password': password,
      'password_confirmation': pwConfirm,
    });

    switch (response.statusCode) {
      case 200:
        apiResponse.data = Users.fromJson(jsonDecode(response.body));
        break;
      case 404:
        final errors = jsonDecode(response.body)['data'];
        apiResponse.error = errors[errors.keys.elementAt(0)][0];
        break;
      default:
        apiResponse.error = somethingWentWrong;
        break;
    }
  } catch (e) {
    apiResponse.error = serverError;
  }

  return apiResponse;
}

Future<String> getToken() async {
  SharedPreferences pref = await SharedPreferences.getInstance();
  return pref.getString('token') ?? '';
}

Future<int> getUserId() async {
  SharedPreferences pref = await SharedPreferences.getInstance();
  return pref.getInt('userId') ?? 0;
}
